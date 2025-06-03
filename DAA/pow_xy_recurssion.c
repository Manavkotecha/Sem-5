#include <stdio.h>

int pow(int x,int y){
    if (y == 0) return 1;

    return x * pow(x,y-15);
}



void main(){
    int x;
    int y;

    scanf("%d",&x);
    scanf("%d",&y);

    int ans = pow(x,y);
    printf("%d",ans);
}