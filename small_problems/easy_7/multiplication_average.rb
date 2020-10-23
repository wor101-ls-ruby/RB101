def show_multiplicative_average(array)
  result = 0.0
  return result if array.include?(0)
  result = (array.inject(1, :*)).to_f / array.length 
  puts "=> The result is #{format("%.3f", result)}"
end









# **Algorithm**
# - Create new Float variable called result and set equal to 0
# - Check if array contains any 0's. If so return result
# - Use Enumerable#inject to multply all elements of the array together
# - divide the resulting integer produced by #inject by the lenght of the array
# - set result variable equalt to the outcome
# - round the result to 3 decimal places


show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667