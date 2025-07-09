#include <stdio.h>
#include <stdlib.h>
#include <time.h>


void swap(int *a, int *b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

void quick_sort(int arr[], int low, int high) {
    if (low < high) {
        int pivot = arr[high];
        int i = low - 1;

        for (int j = low; j < high; j++) {
            if (arr[j] < pivot) {
                i++;
                swap(&arr[i], &arr[j]);
            }
        }
        swap(&arr[i + 1], &arr[high]);

        int pi = i + 1;

        quick_sort(arr, low, pi - 1);
        quick_sort(arr, pi + 1, high);
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
    quick_sort(arr,0, n-1);
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
    quick_sort(arr,0, n-1);
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
    quick_sort(arr,0,n-1);
    end = clock();
    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("Worst case time: %f seconds\n", cpu_time_used);

    return 0;
}