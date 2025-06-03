//count digit using recurssion
#include <stdio.h>

int count(int n){
    if(n == 1) return 1;
    else{
        return 1 + count(n/10);
    }
}

void main(){
   int n;
   printf("Enter number :");
   scanf("%d",&n);

   int ans = count(n);
   printf("Number of digits in %d is %d",n,ans);

}