def center_of(input_string)
  string_length = input_string.length
  if string_length.odd?
    input_string[(string_length / 2)]
  else
    input_string[(string_length / 2) - 1] + input_string[(string_length / 2)]
  end
end





# **Algorithm**
# 1. determine if lenght of input string is even or odd
# 2. if odd divide length by 2 and return character at that element location
# 3. if even divide length by 2 and return character at the element location and the next

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'