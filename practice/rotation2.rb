def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  array = number.to_s.chars
  p (array[0...-n] + rotate_array(array[-n..-1])).join.to_i
end



# **Algorithm**
# 1. turn input integer into a string and then into an array of characters
# 2. use the negative value of n to determine beginning of array to be rotated
# 3. pass as argument array of -n through -1 to rotate_array method
# 4. combine array of elements 0 through -n-1 plus return of method



p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917