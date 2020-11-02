**Problem**
Write a method that takes a string as an argument, and returns an Array that contains every word from the string, 
to which you have appended a space and the word length.

You may assume that words in the string are separated by exactly one space, and that any substring of non-space characters is a word.

Rules:
Explicit
  - Input: string
  - Output: Array
  - assume words in string separated by one space
  - assume any substring of non-space charactes is a word

**Examples / Test Cases**
word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

**Data Structures**

**Algorithm**
1. split argument into an array separated by ' '
2. iterate over the array 
3. for each element add a ' ' and the string version of the current elements length
4. return array