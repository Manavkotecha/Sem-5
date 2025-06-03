#include <stdio.h>

void main(){
   int n;
   int ans =0 ;
   printf("Enter number :");
   scanf("%d",&n);

   for(int i =0 ; i<=n ; i++){
    ans += i;
   }
   printf("%d",ans);
}