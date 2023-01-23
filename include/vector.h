#ifndef VECTOR_H
#define VECTOR_H

typedef struct
{
    unsigned size;
    double *values;
} vector_t;

vector_t make_vector(unsigned);

double v_get(vector_t, unsigned);

void v_set(vector_t, unsigned, double);

void v_print_h(vector_t);

void v_print(vector_t);

double scalar_product(vector_t, vector_t);

void v_free(vector_t);

#endif