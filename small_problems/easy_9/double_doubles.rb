def twice(input_integer)
  string_integer = input_integer.to_s
  number_length = string_integer.length
  first_half = string_integer[0..(number_length/2 - 1)]
  second_half = string_integer[(number_length/2)..-1]
  if first_half == second_half && number_length != 1
    input_integer
  else
    input_integer * 2
  end
end


# **Algorithm**
# - convert input integer to a string
# - split string version of integer in half
# - if the halfs are equal then return the original integer
# - if they are not equal than return double the original integer




p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
