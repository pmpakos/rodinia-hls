#ifndef LUD_H
#define LUD_H

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>


#define GRID_ROWS 64
#define GRID_COLS 64
#define SIZE GRID_ROWS
#define TILE_ROWS 4
#define PARA_FACTOR 8
#define TOP 0
#define BOTTOM (GRID_ROWS / TILE_ROWS - 1)

#define TYPE float

struct bench_args_t {
    float result[GRID_ROWS * GRID_COLS];
};
#define BSIZE 16
#define matrix_dim GRID_ROWS
// void workload(float result[GRID_ROWS * GRID_COLS]);
#endif
