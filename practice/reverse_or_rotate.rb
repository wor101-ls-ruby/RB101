=begin
**Problem**
The input is a string str of digits. Cut the string into chunks (a chunk here is a substring of the initial string) of size sz (ignore the last chunk if its size is less than sz).

If a chunk represents an integer such as the sum of the cubes of its digits is divisible by 2, reverse that chunk; otherwise rotate it to the left by one position. Put together these modified chunks and return the result as a string.

If:
  - sz is <= 0 or if str is empty return ""
  - sz is greater (>) than the length of str it is impossible to take a chunk of size sz hence return "".

Rules:
Explicit
  - Input:
  - Output:

**Examples / Test Cases**
Examples:
revrot("123456987654", 6) --> "234561876549"
revrot("123456987653", 6) --> "234561356789"
revrot("66443875", 4) --> "44668753"
revrot("66443875", 8) --> "64438756"
revrot("664438769", 8) --> "67834466"
revrot("123456779", 8) --> "23456771"
revrot("", 8) --> ""
revrot("123456779", 0) --> "" 
revrot("563000655734469485", 4) --> "0365065073456944"

**Data Structures**
- input string
- input integer
- output string
- array of chunks (strings)

**Algorithm**
1. Intialize an Array to hold chunks
1a. Initalize a String to be returned and set to ''
2. if chunk size is <=0, input string is empty, or chunk is greater then input string lenght return ""
3. break the string into chunks and add them to our array
4. Iterate over the array of chunks
  - if the chunk size is less than the input chunk size skip it
  - if the sum of cubes of digits is divisible by 2 reverse the chunk
  - else rotate the chunki by one digit position to the left
5. return the rejoined array as a single string
  
**chunk_algorithm**
1. create index position = 0
1. loop until index position plus chunk is greater than string length
2. take part of the string ofrom index postion to index postion plus chunk and add it to the array
3. return the array



=end

def chunk_string(string, chunk)
  chunks = []
  
  index_position = 0
  until (index_position + chunk) > string.length
    chunks << string[index_position...(index_position + chunk)]    
    index_position += chunk
    # if index_position + chunk > string.length && (index_position + chunk) != nil
    #   chunks << string[(index_position)..-1]
    # end
  end
  chunks  
end

def sum_of_cubes_even?(string)
  digits = string.chars.map { |digit| digit.to_i }
  
  digits_cubed = digits.map { |digit| digit**2 }
  digits_cubed.sum.even?  
end

def chunk_shift(chunk)
  chunk_chars = chunk.chars
  
  first_char = chunk_chars.shift
  chunk_chars << first_char
  chunk_chars.join
  
end


def revrot(string, chunk)
  chunk_array = []
  
  return '' if chunk <= 0 || chunk > string.length || string == ''
  
  chunk_array = chunk_string(string, chunk)
  
  chunk_array.map! do |chunk|
    if sum_of_cubes_even?(chunk)
      chunk.reverse
    else
      chunk_shift(chunk)
    end    
  end
  
  p chunk_array.join
  
end


p revrot("1234", 0) == ""
p revrot("", 0) == ""
p revrot("1234", 5) == ""
p revrot("733049910872815764", 5) == "330479108928157"