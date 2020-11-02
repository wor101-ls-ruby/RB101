require 'pry'

def rotate_array(array)
  array[1..-1] + [array[0]]
end

# def rotate_rightmost_digits(input_digits, number_to_rotate)
#   array_of_int = input_digits.to_s.chars
#   array_of_int  << array_of_int.slice!(-number_to_rotate)
#   p array_of_int.join.to_i
# end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1]
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(int)
  array = int.to_s.chars
  max_rotated_array = []
  array.length.times do |count|
    # binding.pry
    temp = rotate_rightmost_digits(array[count..-1].join.to_i, array.length - count)
    max_rotated_array << temp.to_s[0]
  end
  p max_rotated_array.join.to_i
end





# **Algorithm**
# 1. turn input integer into an array of chars
# 2. for however long the array is apply #rotate_rightmost_digits and use time as number to rotate argument



max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845