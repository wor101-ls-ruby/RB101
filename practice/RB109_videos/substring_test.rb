=begin
**Problem**
Given 2 strings, your job is to find out if there is a substring
that appears in both strings. You will return true if you find a 
substring that appears in both strings, or false if you do not.
We only care about substrings that are longer than one lettter long.


Rules:
Explicit
  - Input: two Strings 
  - Output: a Boolean
  - return true if there is a substring in both strings
  - return false if there is not
  - a substring must be at least 2 letters long
  - blank strings will automatically result in false being returneed
  - case does not matter

**Examples / Test Cases**



**Data Structures**
- input Strings (string1, string2)
- output Boolean (substring_exists)

**Algorithm**
1. initalize my return variable substring_exists and set equal to false

2. if either string1 or string2 equal '' or are only 1 character long return false
3. create an variable called index_one and set to 0
3. loop until index_one == two less than the length of string1
  - create a variable called index_two and set to 0
  - loop until index_two == two less than the length of string2
    -compare string1 from index_one to index_one + 1 to see if it equals string2 at index_two to index_two +1
    - if it matches set substring_exits to equal true and break
    - else increase index_two by 1
  - if not mathces after first subloop then increase index_one by 1 and loop again
4. return substring_exists
=end

def substring_test(string1, string2)
  substring_exists = false
  
  return substring_exists if string1 == '' || string2 == '' || string1.size == 1 || string2.size == 1
  
  index_one = 0
  until index_one == (string1.size - 2)
    index_two = 0
    until index_two == (string2.size - 2)
      if string1[index_one, 2].downcase == string2[index_two, 2].downcase
        substring_exists = true
        break
      else
        index_two += 1
      end
    end
    index_one += 1
  end
  substring_exists
end






p substring_test('Something', 'Fun') == false
p substring_test('Something', 'Home') == true
p substring_test('Something', 'Fun') == false
p substring_test('Something', '') == false
p substring_test('', 'Something') == false
p substring_test('BANANA', 'banana') == true
p substring_test('test', 'lllt') == false
p substring_test('', '') == false
p substring_test('1234567', '541265') == true
p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true