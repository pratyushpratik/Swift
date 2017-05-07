#include <stdio.h>

int main (int argc, char const *argv[])
{
    int a = 0;
    int b = 1;

    if (a && b) {
        printf("a and b are both true\n");
    }

    if (a || b) {
        printf("one of a or b is true\n");
    }

    if (!a) {
        printf("a is false\n");
    }

    if (!b) {
        printf("b is false\n");
    }

    return 0;
}
