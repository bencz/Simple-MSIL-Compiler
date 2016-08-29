#include <Stdio.h>
int (*aa)(int);
int bb(int rr)
{
    return rr * 3;
}
int main()
{
    zz();
    aa = bb;
    printf("%d\n",(*aa)(5));
    return 0;
}