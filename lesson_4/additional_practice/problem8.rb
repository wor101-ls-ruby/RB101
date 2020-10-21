# What happens when we modify an array while we are iterating over it? What would be output by this code?
# it depends if the method modifies the caller. 

# numbers = [1, 2, 3, 4]
# numbers.each do |number|
#   p number
#   numbers.shift(1)
# end

# output
# 1
# 2 - no it gets skipped because of the shift
# 3
# 4 - no it gets skipped because of the shift
# numbers = []

numbers = [1, 2, 3, 4]
numbers.each do |number|      # the loop counter used by #each is compared against the current length of the array and not the original 
  p number
  numbers.pop(1)
end

# 1
# 2
