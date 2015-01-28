#include <stdio.h>
#include <stdlib.h>


// Returns a random number between 0 and n
// For simplicity, the random number generator is not seeded,
// hence the same random numbers will be generated on every execution
int get_random_number(int n){
    return rand() % n;
}

// Return a (dynamically allocated) array of length size,
// filled with random numbers between 0 and n
int* create_random_array(int size, int n){
    int* array = (int*) malloc(sizeof(int)*size);
    for (int i = 0; i < size; ++i)
        array[i] = get_random_number(n);

    return array;
}


// Should print the contents of array of lenght size
void print_array(int* array, int size){
    for (int i = 0; i < size; i++) 
        printf("%d\n", array[i]);

    printf("\n");
    
    return;
}


// Sorts the numbers into even and odd numbers
void sort(int* array, int size, int** even, int* even_size, int** odd, int* odd_size){
    *even_size = 0;
    *odd_size = 0;
    *even = (int*) malloc(sizeof(int)*size);
    *odd = (int*) malloc(sizeof(int)*size);

    for (int i = 0; i < size; ++i){
        if (array[i] % 2 == 0) {
            (*even)[*even_size] = array[i];
            *even_size += 1;
        } else {
            (*odd)[*odd_size] = array[i];
            *odd_size += 1;
        }
    }

    return;
}


// Computes x^2
int x_squared(int x){
    return x*x;
}


// Computes x^3
int x_cubed(int x){
    return x*x*x;
}


// Applies the function to each element of the array, and returns new array with results
int* map(int (*function)(int), int* array, int size){
    int* mappedArray = (int*) malloc(sizeof(int)*size);
    for (int i = 0; i < size; ++i) {
        mappedArray[i] = (*function)(array[i]);
    }

    return mappedArray;
}

int main(int argc, char** argv){

    // Creates an array with random values
    int* array = create_random_array(10, 10);

    // Prints the values of the array, e.g:
    // 3 6 7 5 3 5 6 2 9 1
    print_array(array, 10);

    // Declaring variables
    int *odd, *even;
    int even_size, odd_size;
    
    // Sorting array into even and odd numbers
    sort(array, 10, &even, &even_size, &odd, &odd_size);
    
    //Printing even numbers, e.g:
    // 6 6 2
    print_array(even, even_size);
    
    //Printing odd numbers, e.g:
    // 3 7 5 3 5 9 1
    print_array(odd, odd_size);

    // Create another random array
    int* new_array = create_random_array(10,10);

    // Print the second array, e.g:
    // 2 7 0 9 3 6 0 6 2 6
    print_array(new_array, 10);
    
    // Compute the cube of each array element
    int* cubed = map(x_cubed, new_array, 10);
    // Print the cubed values, e.g:
    // 8 343 0 729 27 216 0 216 8 216 
    print_array(cubed, 10);
    
    //Compute the square of each array element
    int* squared = map(x_squared, new_array, 10);
    // Print the squared values, e.g:
    // 4 49 0 81 9 36 0 36 4 36
    print_array(squared, 10);
    return 0;
}
