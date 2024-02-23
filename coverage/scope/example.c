#include <stdio.h>

void example() {
  int number;

  printf("Enter a number: ");
  scanf("%d", &number);

  int sum = 0;
  int i = 1;
  while (i <= number) {
    sum += i;
    i++;
  }

  printf("Sum is %d.\n", sum);
}
