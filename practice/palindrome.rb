=begin
**Problem**
write a method to determine if a word is a palindrome, without using the reverse method"

Rules:
Explicit
  - Input: a String
  - Output: a Boolean
  - palindrome reads the same forward as it does backward
  - cannot use the #reverse method
Implicit
  - can the string have whitespace?
  - if so does whitespace count?

**Examples / Test Cases**
palindrome?("madam") == true
palindrome?("dog") == false
palindrome?("nursesrun") == true

**Data Structures**
- input string
- output boolean

**Algorithm**
1. create start index variable and set to 0
2. create end index variable and set to -1
3. determine size of the input string
4. loop input strings size / 2 times
5. on each loop to see if the string in character at the start index equals the character at the end index
6. if it matches increase start index by 1 and decrease end index by 1
7. else break and return false
8. return true if all characters matched in the loop


=end

def palindrome?(string)
  start_index = 0
  final_index = -1
  
  (string.size / 2).times do
    if string[start_index] != string[final_index]
      return false
    else
      start_index += 1
      final_index -= 1
    end
  end
  
  true
end


p palindrome?("madam") == true
p palindrome?("dog") == false
p palindrome?("nursesrun") == true
p palindrome?("abba") == true