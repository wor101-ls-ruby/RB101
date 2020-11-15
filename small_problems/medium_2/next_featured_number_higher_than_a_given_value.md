**Problem**
A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. 
So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument. 
Issue an error message if there is no next featured number.

Rules:
Explicit
  - Input: integer
  - Output: integer
  - featured number must meet three criteria
    1. must be odd
    2. must be a multiple of 7
    3. each digit can occur only once
  - return the next featured number that is greater than the argument
  - there is a limit, and return an error message if limit reached

**Examples / Test Cases**
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

**Data Structures**
- input Integer
- output Integer

**Algorithm**
1. create return integer variable
2. find the next number greater than the input number that is evenly divisible by 7
2. if it is even ten add 7 and repeat until odd
3. turn the input integer into an array of characters
4. if any duplicate characters in the array add 7 and go back to step 2
5. else return number