**Problem**
Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters, 
write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, 
you should only have one space in the result (the result should never have consecutive spaces).

Rules:
Explicit
  - Input: a String
  - Output: a String
  - input string does not contain any capital letters
  - multiple non-alphabetic characters can appear in a row
  - output string should never have multiple whitespace characers in a row
Implicit:
  - string can contain whitespace at the beginning and end
  - punctuation is considered non-alphabetic and should be replaced with whitespace
  - Is this to return a new string or alter the original string object?

**Examples / Test Cases**
cleanup("---what's my +*& line?") == ' what s my line '

**Data Structures**
- Input String with
- Output String

**Algorithm**
- creat variable called new_string
- use #swap method with regexp to swap out all non-alphanumeric characters with whitespace
- use #split method to split string into array delineated by whitespace
- use #join method to rejoin the string and include whitespace between all elements
- if original string begins with non-alphanumeric character  prepend new_string with whitespace
- if original string ends with non-alphanumeric character append new_string with whitespace
- return new_string
