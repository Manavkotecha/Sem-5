#include <stdio.h>

void fibo(int n,int a, int b){

    if (n == 0) return ; 

    printf("%d ",a);
    fibo(n-1,a+b,a);

}

void main(){
   int n;
   printf("Enter number :");
   scanf("%d",&n);
   fibo(n,0,1);
}