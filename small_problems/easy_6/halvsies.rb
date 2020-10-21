def halvsies(input_array)
  new_array = []
  half_length = input_array.length.even? ? (input_array.length/2) :(input_array.length/2 + 1) # can be written as half_length = (input_array.size / 2.0).ceil
  new_array[0] = input_array.slice(0, half_length)
  new_array[1] = input_array.slice(half_length, input_array.length - half_length)
  p new_array
  
end



# **Algorithm**
# - create a new array
# - get the length of the input_array
# - use .split method to put first half of input array into new array
# - use .split again to put second half into new array




p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([]) == [[], []]
