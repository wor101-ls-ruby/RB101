def buy_fruit(input_array)
  return_array = []

  input_array.each do |element|
    element[1].times { |i| return_array << element[0] }
  end
  p return_array

end

def buy_fruit_map(input_array)
  input_array.map { |fruit, quantity| [fruit] * quantity }.flatten
end




# **Algorithm**
# - create a new Array with no elements
# - iterate over the input array
#   - for each element check the quantity element
#   - push the fruit name to the output string that many times
# - return the ouput array



p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
["apples", "apples", "apples", "orange", "bananas","bananas"]

p buy_fruit_map([["apples", 3], ["orange", 1], ["bananas", 2]]) #==
["apples", "apples", "apples", "orange", "bananas","bananas"]