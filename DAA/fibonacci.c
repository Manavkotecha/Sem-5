#include <stdio.h>

void main(){
   int n;
   printf("Enter number :");
   scanf("%d",&n);

   int a = 0;
   int b = 1;

   for (int i = 0; i<=n ; i++){
   printf("%d ", a);

    int temp = a;
    a += b;
    b = temp;

   
   }
   
}