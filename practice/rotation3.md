**Problem**
If you take a number like 735291, and rotate it to the left, you get 352917. 
If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. 
Keep the first 2 digits fixed in place and rotate again to 321759. 
Keep the first 3 digits fixed in place and rotate again to get 321597. 
Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. 
The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

Rules:
  Explicit
    - Input: Integer
    - Output: Integer
    - rotate 1st digit to end of integer
    - keep new first digit and rotate remaining digits
    - keep next 2 digits in place, etc 

**Examples**
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

**Algorithm**
1. create array of integer turned to string characters
2. create a loop to run length of integer - 1 times
2. each time pass to rotate_array the array from current iteration through end
3. return array