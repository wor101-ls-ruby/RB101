**Problem**
The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, 
and each subsequent number is the sum of the two previous numbers. 
This series appears throughout the natural world.

Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. 
For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering that 
it takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. 
(The first Fibonacci number has index 1.)

Rules:
Explicit
  - Input: a positive integer
  - Output: a positive integer
  - Fibonacci starts with 1, 1 followed by sum of two previous #'s to infinity
  - the return number 'index' starts at 1 and not 0
Implicit
  - Input will always be a valid integer


**Examples / Test Cases**
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

**Data Structures**
- an array to store the generated fibonnaci numbers

**Algorithm**
- creat an array called fibonnaci_numbers with the first two elements equal to 1
- while the length of the last element in the array is < the input integer 
  - sum the last two elements of the array and push it to the array
- return length of the array -1