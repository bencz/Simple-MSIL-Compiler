#if __ORANGEC__
#include <stdio.h>
#endif

#if __ORANGEC__
int main()
#else
void main()
#endif
{
  printf("Hello World! :)\n");
#if __ORANGEC__
  return 0;
#else
  exit(0);
#endif
}