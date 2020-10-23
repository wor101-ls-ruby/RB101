def multiply_list(array1, array2)
  return_array = []
  array1.each_with_index { |n, index| return_array <<  n * array2[index] }
  p return_array
end

def multiply_list_zip(array1, array2)
  p array1.zip(array2).map { |x| x.inject(1, :*) } 
end



# **Algorithm**
# - Create new Array called return array
# - Iterate over the first input array
# - for each element, multiply it by the element in the second inpu array at the same index
# - push the result to the return array
# - return the return array


# p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

p multiply_list_zip([3, 5, 7], [9, 10, 11]) == [27, 50, 77]