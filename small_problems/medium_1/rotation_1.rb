def rotate_array(input_array)
  rotated_array = [] 
  
  input_array.each_with_index do |element , index|
    if index != 0 
      rotated_array[(index - 1)] = element
    else
      rotated_array[input_array.length - 1] = element
    end
    
  end 
  p rotated_array
end

def rotate_array_easy(array)
  array[1..-1] + [array[0]]
end


def rotate_string(string)
  rotate_array_easy(string.chars)
end

def rotate_integer(int)
  rotate_array_easy(int.to_s.chars)
end



# **Algorithm**
# 1. iterate over input array
# 2. push each element after the first to a new array
# 3. push the first element to the new array last
# 4. return new array



p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
