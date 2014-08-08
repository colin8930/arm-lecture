#include <stdio.h>

extern int fibonacci(int x);

int main(int argc, char **argv)
{
  int number=0;
  int result=0;

  printf("Please input a number:");
  scanf("%d",&number);
  result = fibonacci(number);   
  printf("The fibonacci sequence at %d is: %d\n", number, result);
<<<<<<< HEAD


  return 0;
=======
>>>>>>> b1cdc88c60eabdae0a14d5b10b65f911c2df17f5
}

