**Problem**
Write a method that takes a positive integer as an argument and returns that number with its digits reversed. Examples:

Don't worry about arguments with leading zeros - Ruby sees those as octal numbers, which will cause confusing results. For similar reasons, the return value for our fourth example doesn't have any leading zeros.

Rule:
Explicit
  - Input: positive Integer
  - Output: positive Integer
  - reverse the digits of the input number
  - the output number should have no leading zeros
Implicit
  - a single digit will return itslef

**Examples / Test Cases**
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

**Data Structures**
- Input integer
- output integer

**Algorithm**
1. Covert input integer to a string
2. reverse the string
3. convert reversed string to integer
4. return new integer