#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int binary_search(int arr[], int n, int target) {
    int left = 0, right = n - 1;

    while (left <= right) {
        int mid = left + (right - left) / 2;

        if (arr[mid] == target) {
            return mid;
        } else if (arr[mid] < target) {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }

    return -1;
}

int recursive_binary_search(int arr[], int left, int right, int target) {

    int mid = left + (right - left) / 2;

    if (arr[mid] == target)
        return mid;
    else if (arr[mid] < target)
        return recursive_binary_search(arr, mid + 1, right, target);
    else
        return recursive_binary_search(arr, left, mid - 1, target);
}

int main() {
    FILE *file;
    clock_t start, end;
    double cpu_time_used;

    int n = 100000;
    int arr[n];

    file = fopen("best.txt", "w");
    for (int i = 0; i < n; i++) {
        fprintf(file, "%d ", i);
    }
    fclose(file);

    file = fopen("average.txt", "w");
    for (int i = 0; i < n; i++) {
        fprintf(file, "%d ", i);
    }
    fclose(file);

    file = fopen("worst.txt", "w");
    for (int i = 0; i < n; i++) {
        fprintf(file, "%d ", i);
    }
    fclose(file);

    file = fopen("best.txt", "r");
    for (int i = 0; i < n; i++) {
        fscanf(file, "%d", &arr[i]);
    }
    fclose(file);
    int target = n / 2;
    start = clock();
    recursive_binary_search(arr, 0, n - 1, target);
    end = clock();
    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("Best case (recursive) time: %f seconds\n", cpu_time_used);

    file = fopen("average.txt", "r");
    for (int i = 0; i < n; i++) {
        fscanf(file, "%d", &arr[i]);
    }
    fclose(file);
    int random_target = rand() % n;
    start = clock();
    recursive_binary_search(arr, 0, n - 1, target);
    end = clock();
    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("Average case (iterative) time: %f seconds\n", cpu_time_used);

    file = fopen("worst.txt", "r");
    for (int i = 0; i < n; i++) {
        fscanf(file, "%d", &arr[i]);
    }
    fclose(file);
    start = clock();
    recursive_binary_search(arr, 0, n - 1, target);
    end = clock();
    cpu_time_used = ((double)(end - start)) / CLOCKS_PER_SEC;
    printf("Worst case (iterative) time: %f seconds\n", cpu_time_used);

    return 0;
}
