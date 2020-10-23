def swapcase(string)
  result = string.chars.map { |char| char == char.upcase ? char.downcase : char.upcase }
  p result.join
end







# **Algorithm**
# - Create Array named chars 
# - Set each element of chars to a single character of the input string using the #chars method
# - iterate over the chars array use #map as we want to transform the array
#   - check each character to see if it is uppercase
#   - if it is uppercase, use the downcase method on it to 
#   - check if the character is lowercase
#   - if it is lowercase use the uppercase method on it
# - rejoin the updated array into a string
# - return updated string


p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'