def rotate_array(array)
  array[1..-1] + [array[0]]
end

def max_rotation(number)
  array = number.to_s.chars
  (array.size - 1).times do |y|
    array[y..-1] = rotate_array(array[y..-1])
  end
  p array.join.to_i
end

# **Algorithm**
# 1. create array of integer turned to string characters
# 2. create a loop to run length of integer - 1 times
# 2. each time pass to rotate_array the array from current iteration through end
# 3. return array


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845