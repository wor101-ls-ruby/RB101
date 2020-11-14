**Problem**
Write a method that can rotate the last n digits of a number. For example:

Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.

Rules:
Explicit
  - Input: two integers
  - Output: integer
  - roate the last n digits of a number
  - rotating just 1 digt results in original number



**Examples / Test Cases**
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

**Algorithm**
1. turn input integer into a string and then into an array of characters
2. use the negative value of n to determine beginning of array to be rotated
3. pass as argument array of -n through -1 to rotate_array method
4. combine array of elements 0 through -n-1 plus return of method