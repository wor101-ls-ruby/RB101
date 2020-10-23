**problem**
Write a method that takes two Array arguments in which each Array contains a list of numbers, 
and returns a new Array that contains the product of every pair of numbers that can be formed between 
the elements of the two Arrays. The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

Rules:
Explicit
  - Input: two Arrays, each containing numbers
  - Output: one Array, contaiing numbers
  - Neither argument is an empty array
  - return Array should contain the product of every pair of numbers between the two elements
Implicit
  - numbers are Integers
  - The arrays do not have to be the same length

**Examples / Test Cases**
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

**Data Structures**
- input Arrays of integers
- Output array of integers
- 
**Algorithm**
- Create new Array variable called products_array
- check the length of each array arguments
- iterate over the first array
- while iterating over the first array iterate over the second array
- multiply the element from the first array by every element in the second array
- push the result to the products_array
- sort the products_array
- return the products_array
