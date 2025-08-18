
use std::collections::HashMap;

use tapasco::{device::Device, job::Job, tlkm::*};

const WIDTH: usize = 1024;
const HEIGHT: usize = 1024;

fn mandelbrot_on_fpga(pe: &mut Job, device: &Device, cr: f32, ci: f32, step: f32) -> Vec<u32> {
    pe.start(vec![
        tapasco::device::PEParameter::Single32(f32::to_bits(cr) ),
        tapasco::device::PEParameter::Single32(f32::to_bits(ci) ),
        tapasco::device::PEParameter::Single32(f32::to_bits(step) ),
        tapasco::device::PEParameter::DataTransferAlloc(tapasco::device::DataTransferAlloc {
            data: vec![0u8; WIDTH * HEIGHT].into_boxed_slice(),
            free: true,
            from_device: true,
            to_device: false,
            memory: device.default_memory().unwrap(),
            fixed: Some(0x00000000),
        }),
    ]).unwrap();
    let (_result, output) = pe.release(true, false).unwrap();
    let out_bytes = &output[0];
    (0..WIDTH*HEIGHT).map(|idx| {
        let bytes : &[u8; 4] = (&out_bytes[idx*4..idx*4+4]).try_into().unwrap();
        u32::from_le_bytes(*bytes)
    }).collect()
}

const MAX_ITERATION : usize = 101;

fn fractal_hop((cx, cy): (f32, f32), (x, y) : (f32, f32)) -> (f32, f32) {
    (
        x * x - y * y + cx, 
        2.0 * x * y + cy
    )
}

fn mandelbrot_start_from(c: (f32, f32), (mut x, mut y) : (f32, f32), mut iteration: usize) -> usize {
    while x * x + y * y <= 4.0 && iteration < MAX_ITERATION {
        (x, y) = fractal_hop(c, (x, y));
        iteration += 1;
    }

    iteration
}

fn mandelbrot(c: (f32, f32)) -> usize {
    mandelbrot_start_from(c, (0.0, 0.0), 0)
}

fn mandelbrot_on_cpu(cr: f32, ci: f32, step: f32) -> Vec<u32> {
    (0..WIDTH*HEIGHT).map(|idx| {
        let px_x = idx % WIDTH;
        let px_y = idx / WIDTH;
        let xx = (px_x as i64 - WIDTH as i64 / 2) as f32 * step + cr;
        let yy = (px_y as i64 - WIDTH as i64 / 2) as f32 * step + ci;

        mandelbrot((xx, yy)) as u32
    }).collect()
}

fn print_buf(buf: &[u32]) {
    for y in 0..HEIGHT {
        for x in 0..WIDTH {
            print!("\t{}", buf[y*WIDTH+x]);       
        }
        println!()
    }
}

fn main() {
    const CR : f32 = 0.0;
    const CI : f32 = 0.0;
    const STEP : f32 = 4.0 / WIDTH as f32;
    println!("Expected:");
    let cpu_buf = mandelbrot_on_cpu(CR, CI, STEP);
    print_buf(&cpu_buf);
    let total_iters : u32 = cpu_buf.iter().sum();
    println!("Total iterations needed: {total_iters}");

    let tlkm = TLKM::new().unwrap();
    println!("TLKM version is {}", tlkm.version().unwrap());
    let devices = tlkm.device_enum(&HashMap::new()).unwrap();
    for mut device in devices {
        println!(
            "Device {}: Name: {}, Vendor: {}, Product {}, Status{:?}",
            device.id(),
            device.name(),
            device.vendor(),
            device.product(),
            device.status()
        );
        device.change_access(tapasco::tlkm::tlkm_access::TlkmAccessExclusive).unwrap();

        let pe_id = match device.get_pe_id("esa.informatik.tu-darmstadt.de:user:StringArt:1.0") {
            Ok(x) => x,
            Err(_e) => continue,
        };
        println!("pe found: {}", pe_id);
        let mut pe = device.acquire_pe(pe_id).unwrap();

        let fpga_buf = mandelbrot_on_fpga(&mut pe, &device, CR, CI, STEP);
        print_buf(&fpga_buf);
    }
    println!("exit");
    
}
