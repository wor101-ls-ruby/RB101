
**The Problem**
Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. 
The ASCII string value is the sum of the ASCII values of every character in the string. 
(You may use String#ord to determine the ASCII value of a character.)

Explicit Requirements:
  -Input: string
  -Output: integer that is the sum of all ASCII charaters in the string

Implicit Requirements:
  -White space should be considered to equal 0

Questions:


**Test Cases**
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

**Data Structure**
-method takes a string argument
-method initializes and returns an Integer variable named 'sum'
-convert the string to an array called characters

**Algorithm**
1. Create a 'characters' array that equals 'string'.to_a
2. Create a 'sum' integer that is set to 0
3. Iterate over 'characters' 
  a. skip if the element is whitespace
  b. if element is not whitepace use .ord to check its value
  c. add value to 'sum'
4. return the 'sum'