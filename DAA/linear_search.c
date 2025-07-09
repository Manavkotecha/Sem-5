#include <stdio.h>
#include<stdlib.h>
#include <time.h>

void linear_search(int arr[], int n)
{
    for (int i = 0; i <= n; i++)
    {
        continue;

    }
}

int main()
{
    FILE *file;
    clock_t start, end;
    double cpu_time_used;

    int n = 100000;
    int arr[n];

    file = fopen("best.txt", "w");
    for (int i = 0; i < n; i++)
    {
        fprintf(file, "%d ", i);
    }
    fclose(file);

    file = fopen("worst.txt", "w");
    for (int i = n - 1; i >= 0; i--)
    {
        fprintf(file, "%d ", i);
    }
    fclose(file);

    file = fopen("average.txt", "w");
    srand(time(NULL));
    for (int i = 0; i < n; i++)
    {
        fprintf(file, "%d ", rand() % 100000);
    }
    fclose(file);

    file = fopen("best.txt", "r");
    for (int i = 0; i < n; i++)
    {
        fscanf(file, "%d", &arr[i]);
    }
    fclose(file);
    start = clock();
    linear_search(arr, n);
    end = clock();
    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("Best case time: %f seconds\n", cpu_time_used);

    file = fopen("average.txt", "r");
    for (int i = 0; i < n; i++)
    {
        fscanf(file, "%d", &arr[i]);
    }
    fclose(file);
    start = clock();
    linear_search(arr, n);
    end = clock();
    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("Average case time: %f seconds\n", cpu_time_used);

    file = fopen("worst.txt", "r");
    for (int i = 0; i < n; i++)
    {
        fscanf(file, "%d", &arr[i]);
    }
    fclose(file);
    start = clock();
    linear_search(arr, n);
    end = clock();
    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("Worst case time: %f seconds\n", cpu_time_used);

    return 0;
}
