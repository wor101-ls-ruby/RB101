
def descending(string_array)
  return_array = [0]
  index_position =0
  bump = 0
  
  string_array.each do |element1|
    string_array.each do |element2|
      if element1.to_i < element2.to_i
        index_position += 1
      end 
    end
    if return_array[index_position + bump] == element1
      bump += 1 
    end 
    return_array[index_position + bump] = element1
    index_position = 0
  end
  p return_array

end

# We can use the #sort method!!!!!

def descending_easy(array)
  array.sort { |a, b| b.to_i <=> a.to_i }
end


# **Algorithm**
# - Create new variable Array called return_array
# - Create neew Integer variable called index_position and set it to 0
# - iterate over input_array
#   - for each element, iterate over the entire array again
#     - compare the element to every other element to see if it is less than that element
#     - if it is less then index_position += 1
#   - use th current element as the value of return array at index_position
#   - set index_position to 0 and repeat
# - return return_array


arr = ['10', '11', '9', '7', '8']

arr2 = ['10', '11', '11', '9', '7', '8']

# descending(arr)
# descending(arr2)

p descending_easy(arr)
p descending_easy(arr2)