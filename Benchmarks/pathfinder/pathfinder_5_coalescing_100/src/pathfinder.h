#include <stdio.h>
#include <stdlib.h>
#include <string.h>
//-----------------------------------------------
//Original
// #define ROWS 16384
// #define COLS 16384
//-----------------------------------------------
//-----------------------------------------------
//Alec-added
#define ROWS 100
#define COLS 100000
//-----------------------------------------------
// #define TILE_SIZE 16
#define TILE_SIZE 8
#define TYPE int8_t
#define TYPEOUT int32_t
#define MIN(a,b) ((a)<=(b) ? (a) : (b))

void pathfinder_kernel(int8_t J[ROWS*COLS], int32_t Jout[COLS]);

////////////////////////////////////////////////////////////////////////////////
// Test harness interface code.

struct bench_args_t {
  int8_t J[ROWS*COLS];
  int32_t Jout[COLS];
};
