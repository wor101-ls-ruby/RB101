**RB019 Live Assessment: Codewars : Problem 29 - Split Strings**
Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').


solution("abcdef") == ["ab", "cd", "ef"]
solution("abcdefg") == ["ab", "cd", "ef", "g_"]
solution("") ==  []




**RB019 Live Assessment: Codewars : Problem 32 - Highest Scoring Word**
Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest in the original string.

All letters will be lowercase and all inputs will be valid.

high('man i need a taxi up to ubud') ==  'taxi'
high('what time are we climbing up the volcano') ==  'volcano'
high('take me to semynak') ==  'semynak'
high('aaa b') ==  'aaa'






**RB019 Live Assessment: Codewars : Problem 54 - Are They The "Same"?**
Given two arrays a and b write a function comp(a, b) (compSame(a, b) in Clojure) that checks whether the two arrays have the "same" elements, with the same multiplicities. "Same" means, here, that the elements in b are the elements in a squared, regardless of the order.

Valid arrays
  a = [121, 144, 19, 161, 19, 144, 19, 11]  
  b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
  comp(a, b) returns true because in b 121 is the square of 11, 14641 is the square of 121, 20736 the square of 144, 361 the square of 19, 25921 the square of 161, and so on.
  It gets obvious if we write b's elements in terms of squares:

  a = [121, 144, 19, 161, 19, 144, 19, 11] 
  b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]
  
Invalid arrays
  If we change the first number to something else, comp may not return true anymore:

  a = [121, 144, 19, 161, 19, 144, 19, 11]  
  b = [132, 14641, 20736, 361, 25921, 361, 20736, 361]
  comp(a,b) returns false because in b 132 is not the square of any number of a.

  a = [121, 144, 19, 161, 19, 144, 19, 11]  
  b = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]
  comp(a,b) returns false because in b 36100 is not the square of any number of a.

Test Case
  comp( [121, 144, 19, 161, 19, 144, 19, 11], 
        [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]) ==  true