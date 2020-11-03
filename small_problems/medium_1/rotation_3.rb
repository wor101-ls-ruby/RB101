def rotate_array(array)
  array[1..-1] + [array[0]]
end



def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1]
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end



def max_rotation(int)
  count = int.to_s.length
  new_int = int
  while count > 0 
    new_int = rotate_rightmost_digits(new_int, count)
    count -= 1
  end
  p new_int
end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
