// Write recursive function to compute the factors of a positive integer fact()

// Function prototype : int fact(int f)
// If f == 1 the function return 1
// If f <= 0 return 0

include 'dart:math';

int fact(int f) {
  if (f == 1) {
    // Base case
    return 1;
    // return 1;
    } else if (f <= 0) {
        return 0;
        // return 0;
        } else {
        return 1;
        // return 1;
    }
    // return 0;
}