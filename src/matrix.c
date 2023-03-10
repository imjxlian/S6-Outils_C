#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <assert.h>
#include "matrix.h"

matrix_t make_matrix(unsigned r, unsigned c)
{
    unsigned i, j;
    matrix_t m;
    assert(r != 0 && c != 0);
    m.values = (double *)calloc(r * c, sizeof(double));
    m.row_size = r;
    m.col_size = c;
    return m;
}

double m_get(matrix_t m, unsigned i, unsigned j)
{
    assert(i < m.row_size && j < m.col_size);
    return m.values[i * m.col_size + j];
}

void m_set(matrix_t m, unsigned i, unsigned j, double x)
{
    assert(i < m.row_size && j < m.col_size);
    m.values[i * m.col_size + j] = x;
}

void m_add(matrix_t m, unsigned i, unsigned j, double x)
{
    assert(i < m.row_size && j < m.col_size);
    m.values[i * m.col_size + j] += x;
}

/*The following function is internal:*/
void peek_row(const matrix_t *m, unsigned i, vector_t *v)
{
    v->size = m->col_size;
    v->values = m->values + i * m->col_size;
}

double scalar_prod(vector_t v1, vector_t v2)
{
    int i;
    double r = 0;
    assert(v1.size == v2.size);
    for (i = 0; i < v1.size; i++)
        r += v_get(v1, i) * v_get(v2, i);
    return r;
}

vector_t apply(matrix_t m, vector_t v)
{
    unsigned i;
    vector_t row, res = make_vector(m.row_size);
    assert(m.col_size == v.size);
    for (i = 0; i < res.size; i++)
    {
        peek_row(&m, i, &row);
        v_set(res, i, scalar_prod(row, v));
    }
    return res;
}

void m_print(matrix_t m)
{
    unsigned i;
    vector_t row;
    for (i = 0; i < m.row_size; i++)
    {
        peek_row(&m, i, &row);
        v_print_h(row);
    }
}

matrix_t make_rotation_matrix(double alpha)
{
    matrix_t rot = make_matrix(2, 2);
    m_set(rot, 0, 0, cos(alpha));
    m_set(rot, 1, 1, cos(alpha));
    m_set(rot, 0, 1, -sin(alpha));
    m_set(rot, 1, 0, sin(alpha));
    return rot;
}

void free_matrix(matrix_t m)
{
    free(m.values);
}

matrix_t make_identity_matrix(unsigned n) {
  matrix_t id = make_matrix(n,n);
  unsigned i,j;
  for(i=0; i<n; i++)
    for(j=0; j<n; j++)
      m_set(id, i, j, i==j);
  return id;
}