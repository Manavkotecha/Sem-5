#include <stdio.h>

void main(){
    int n;
    printf("Enter a number: ");
    scanf("%d", &n);

    int count = 0;

    while(n != 0){
        int temp = n;
        n /= 10;
        count++;

    }
    printf("Number of digits: %d", count);
}