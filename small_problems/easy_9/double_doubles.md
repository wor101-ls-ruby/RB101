**Problem**
A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. 
For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; 
double numbers should be returned as-is.

Note: underscores are used for clarity above. Ruby lets you use underscores when writing long numbers; 
however, it does not print the underscores when printing long numbers. 
Don't be alarmed if you don't see the underscores when running your tests.

Rules:
Explicit
  - Input: integer
  - Output: integer
  - double bumbers left-side digits are exactly the same as right side digits
  - return integers should be 2 timest he input integer unless a double number
  - double numbers returned as is
Implicit
  - single digits do not count as double numbers
  - input integer will be positive

**Examples / Test Cases**
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

**Algorithm**
- convert input integer to a string
- split string version of integer in half
- if the halfs are equal then return the original integer
- if they are not equal than return double the original integer