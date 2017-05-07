#include <stdio.h>

int multiply(int x, int y)
{
    return x * y;
}

int main (int argc, char const *argv[])
{
    int (*f)(int, int) = &multiply;
    int (*g)(int, int) = multiply;

    int f_result = f(2, 5);
    int g_result = g(25, 4);

    printf("%d\n", f_result);
    printf("%d\n", g_result);

    return 0;
}
