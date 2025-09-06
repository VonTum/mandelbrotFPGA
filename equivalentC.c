#include <stdio.h>

#define MAX_ITER 100

void mandelbrot(float origin_r, float origin_i, float step,
                int WIDTH, int HEIGHT, int screen[WIDTH][HEIGHT]) {

    for (int px_y = 0; px_y < HEIGHT; px_y++) {
        for (int px_x = 0; px_x < WIDTH; px_x++) {
            int x = px_x - WIDTH / 2;
            int y = px_y - HEIGHT / 2;
            float cr = origin_r + x * step;
            float ci = origin_i + y * step;

            float zr = 0.0;
            float zi = 0.0;
            int iter = 0;

            while (zr * zr + zi * zi < 4.0 && iter < MAX_ITER) {
                float zr_new = zr * zr - zi * zi + cr;
                float zi_new = 2.0 * zr * zi + ci;
                zr = zr_new;
                zi = zi_new;
                iter++;
            }

            screen[px_x][px_y] = iter;
        }
    }
}
