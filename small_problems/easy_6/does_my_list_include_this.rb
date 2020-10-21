def include?(array, search_value)
  array.each { |element| element == search_value ? (return true) : next }
  false
end


def include_easy?(array, value)
  !!array.find_index(value)
end




# **Algorithm**
# - create Boolean variable called included and set to false
# - iterate over input array and see if search value equals element
# - if it does then set included to true and break


p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false