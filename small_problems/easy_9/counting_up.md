**Problem**
Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

Rules:
Explicit
  - Input: integer
  - Output: array of integers
  - argument will alwasy be a valide integer greater than 0
  - return array of all integers in sequence between 1 and the argument

**Examples / Test Cases**
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

**Data Structures**
- input integer
- return array
- 

**Algorithm**
1. iterate a number of times equal to the input integer
2. each time push a number to the return array
3. the first number should alwasy be 1 and following numebrs should be 1 greater until input integer is pushed