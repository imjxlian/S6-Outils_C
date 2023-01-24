/** @file vector.h
 *  @brief A small vector library
 *
 * This library provide a few functions for the computation with vectors.
 */

#ifndef VECTOR_H
#define VECTOR_H

/** @brief Definition of vector_t type  */ 
typedef struct
{
    unsigned size;
    double *values;
} vector_t;

/** @brief Vector factory
 *
 * This function builds a null vector of size s;
 * the array is dynamically allocated and must be freed with the function
 * free_vector
 * @param s: the size of the vector must be >0
 * @return a vector of size s initialized to 0
 * @see free_vector
 */

vector_t make_vector(unsigned s);

void free_vector(vector_t v);

double v_get(vector_t v, unsigned i);

void v_set(vector_t v, unsigned i, double x);

void v_add(vector_t v, unsigned i, double x);

double scalar_prod(vector_t v1, vector_t v2);

void v_print_h(vector_t v);

void v_print(vector_t v);

#endif