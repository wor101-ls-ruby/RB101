**Problem**
Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that the string will always contain at least one word. 
You may also assume that each string contains nothing but words and spaces

Rules:
Explicit
  - Input: string of words separated by spaces
  - Output: string of words separated by spaces
  - each word is separated only by white spaces
  - the input string will always contain at least one word
  - each word will be at least 1 character long
Implicit
  - case matters 
  - a single letter word remains unchanged

**Examples / Test Cases**
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

**Data Structures**
- Input will be string of words separated by whitespace
- Output will be a string of words separated by whitespace
- An array containg each word as an elment
- String variable representing the first letter of a word
- String variable representing the last letter of a word

**Algorithm**
1. Create an array called words_array2. 
2. Set words_array equal to the input string split into words using .split(' ')
3. Iterate over the words_array and switch first and last letter for each word in swap_letters() method
4. rejoin the modified words_array using .join(' ')
5. return words_array


**Problem**
Take a string containing one word. Swap the first and last letter and return the new string.

**Examples / Test Cases**
'hello' == 'olleh'
'will' == 'lliw'

**Data Structures**
- input string variable named word_string
- first letter string variable named first_letter
- last letter string variable named last_letter

**Algorithm**
1. Create variable first_letter and set it equal to word_string[0]
2. Create variable last_letter and set it equal to word_string[-1]
3. set string[-1] equal to first_letter
4. set string[0] = last_letter
5. return string