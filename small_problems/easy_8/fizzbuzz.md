**Problem**
Write a method that takes two arguments: the first is the starting number, and the second is the ending number. 
Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", 
if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

Rules:
Explicit
  - Input: two integers
  - Output:print to screen 
  - first integer is starting number
  - second integer is ending number
  - print  all numbers between the two except if divisible by 3 or 5
  - if divisible by 3 and 5 print "FizzBuzz"
  - if dvisible only by 5 print "Buzz"
  - if divisible only by 3 print "Fizz"
Implicit:
  - first input integer will always be less than the second
  - output results should be separated by commas

**Examples / Test Cases**
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

**Data Structures**
- two integers
- array of all integers in range
- possibly add results to array
- print sequence of strings to screen
- 
**Algorithm**
- create result array
- create array of integers using first input integer as first value and second input integer as final value
- iterate over the array 
  - if number is divisible by 3 and 5 push "FizzBuzz" to the array
  - else if number is divisible by 5 push "Buzz" to the array
  - else if number is divisible by 3 push "Fizz" to the array
  - else push string version of integer to array
- return array joined with commas inserted