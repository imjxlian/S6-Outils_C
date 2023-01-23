#include <stdio.h>
#include <stdlib.h>
#include "matrix.h"

int main()
{
    vector_t v, w;
    int i, j;
    double pi = 3.14159265;
    matrix_t m = make_rotation_matrix(pi / 6);
    v = make_vector(2);
    // v = make_vector(0); // should assert
    v_set(v, 0, 1);
    v_set(v, 1, -1);
    w = apply(m, v);
    m_print(m);
    v_print(w);

    vector_t x;
    x = make_vector(7);
    printf("size of x: %lu\n", sizeof(x));

    return EXIT_SUCCESS;
}