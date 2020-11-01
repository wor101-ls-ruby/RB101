**Problem**
Write a method that takes a string, and returns a new string in which every consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should not be doubled.

Rules:
Explicit
  - Input: a String
  - Output: a String
  - every consonant should be doubled in the output string
  - Vowles, digits, punctuation and whitespace should not be doubled


**Examples / Test Cases**
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

**Data Structures**
- Input string
- Output String

**Algorithm**
1. Iterate over each char of the input string
2. If the char is a consonant push it to the output string twice
3. If the char is a anything else push it to the output string once
  - may be easiest to use Regexp to check for vowels, digits, punctuation, whitespace over constants
4. retunr the output string