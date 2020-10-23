**Problem**
Write a method that takes a single String argument and returns a new string that contains 
the original value of the argument with the first character of every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

Problem:
Explicit
  - Input: string
  - Output: string
  - string may have multiple word and whitespace
  - first letter of each word in output string should be capitalized
  - all other letters sohould be lowercase
Implicit
  - Are there non words in any input strings?
  - Every string will contain at least one word?
  - 

**Examples / Test Cases**

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


**Data Structures**
Strings!

**Algorithm**
- split input string into an array of words 
- use #capitalize! on each word
- rejoin the array into a string
- return the new string



