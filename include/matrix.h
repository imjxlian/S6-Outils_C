#include "vector.h"

#ifndef MATRIX_H
#define MATRIX_H

typedef struct
{
    unsigned row_size;
    unsigned col_size;
    double *values;
} matrix_t;

matrix_t make_matrix(unsigned, unsigned);

double m_get(matrix_t, unsigned, unsigned);

void m_set(matrix_t, unsigned, unsigned, double);

void m_free(matrix_t);

vector_t apply(matrix_t, vector_t);

void m_print(matrix_t);

matrix_t make_rotation_matrix(double);

#endif