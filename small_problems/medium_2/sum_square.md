**Problem**
Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

Rules:
Explicit
  - Input: integer
  - Output: integer
  - difference betwee sum of a range square and the suare of each number in a range
  - start at 1 and iterate up to input integer

**Examples / Test Cases**
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

**Data Structures**
- input integer
- output integer

**Algorithm**
1. create an array of integers starting at 1 and going up to the input integer
2. create square_of_sums variable
3. create sum_of_squares variable and set to 0
4. set square_of_sums equal to sum of the array squared
4. iterate over array
  - square each element and add to sum_of_squares
5. subtract sum_of_squares from square_of_sums