#include <stdio.h>

int main (int argc, char const *argv[])
{
    int x = 10;
    int y = 20;
    int x2 = x++;
    int y2 = ++y;
    printf("%d\n", x);
    printf("%d\n", x2);
    printf("%d\n", y);
    printf("%d\n", y2);
    return 0;
}
