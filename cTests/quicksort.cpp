#include <cassert>
#include <algorithm>
#include <iostream>
#include <random>

std::random_device random_device;
std::mt19937 engine{random_device()};

void quicksort(int list[], int start, int end);
int partition(int list[], int start, int end);
void print(int list[], int start, int end);

int main()
{
    int unsorted[] = {5, 2, 1, 0, 4, 5, 5, -9, -23, 12, 15, 18, 5, 9, 5};
    const int size = sizeof(unsorted)/sizeof(*unsorted);

    std::cout << "Before, size " << size << "\n";
    print(unsorted, 0, size - 1);
    quicksort(unsorted, 0, size - 1);
    std::cout << "After, size " << size << "\n";
    print(unsorted, 0, size - 1);
    int sorted[size];
    std::copy(std::begin(unsorted), std::end(unsorted), std::begin(sorted));
    std::sort(std::begin(sorted), std::end(sorted));
    assert(std::equal(std::begin(unsorted), std::end(unsorted),
            std::begin(sorted)));
    return 0;
}

void quicksort(int list[], int start, int end)
{
    std::cout << "In quicksort, start = " << start << ", end = " << end << "\n";
    print(list, start, end);
    if (end > start)
    {
        int j = partition(list, start, end);
        std::cout << "quicksort, j = " << j << "\n";
        quicksort(list, start, j);
        quicksort(list, j+1, end);
    }
}

int partition(int list[], int start, int end)
{
    std::uniform_int_distribution<int> dist(start, end - 1);
    std::swap(list[start], list[dist(engine)]);
    int pivot = list[start];
    int i = start - 1;
    int j = end + 1;

    std::cout << "In partition, start = " << start << ", end = " << end << "\n";
    print(list, start, end);

    while(true)
    {
        std::cout << "In partition, i = " << i << ", j = " << j << "\n";
        do {
            ++i;
            std::cout << "Current i = " << i << std::endl;
        } while (list[i] < pivot);

        do {
            --j;
            std::cout << "Current j = " << j << std::endl;
        } while (list[j] > pivot);

        std::cout << "In partition, after, i = " << i << ", j = " << j << "\n";
        if (i < j) {
            std::cout << "Swapping\n";
            std::swap(list[i], list[j]);
        } else {
            return j;
        }
    }
}

void print(int list[], int start, int end)
{
    std::cout << "[";
    for (int i = start; i < end; ++i) {
        std::cout << list[i] << ", ";
    }
    if (end - start >= 0)
        std::cout << list[end];
    std::cout << "]\n";
}
