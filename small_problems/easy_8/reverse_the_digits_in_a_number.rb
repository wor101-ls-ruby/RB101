def reversed_number(input_integer)
  input_integer.to_s.reverse.to_i
end




# **Algorithm**
# 1. Covert input integer to a string
# 2. reverse the string
# 3. convert reversed string to integer
# 4. return new integer


p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
