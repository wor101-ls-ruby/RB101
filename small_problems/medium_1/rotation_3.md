**problem**
If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. 
Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. 
Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. 
The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. 
You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

Rules:
Explicit
  - Input: integer
  - Output: integer
  - rotate the left 1 integer then fix fthe fist digit'
  - conitnue until maximum rotation reached
  - Do not have to handle multiple 0's

**Examples / Test Cases**
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

**Data Structure**
- Input integer
- output integer
- array of individual chars making up the input integer

**Algorithm**
1. turn input integer into an array of chars
2. for however long the array is apply #rotate_rightmost_digits and use time as number to rotate argument