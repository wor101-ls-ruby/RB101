
def joinor(input_array, delimeter = ', ', final_delimeter = 'or')
  joined_string = ''
  
  if input_array.length <= 2 
    return joined_string = input_array.join(' ' + final_delimeter + ' ')
  end
  
  input_array.each_with_index do |int, index|
    if input_array[index] != input_array.last 
      joined_string << int.to_s + delimeter
    else
      joined_string << final_delimeter + ' ' + int.to_s
    end
  end
  joined_string 
end
  



# **Algorithm**
# - create new String variable named joined_string
# - iterate over the input_array
# - for each element convert it to a string
# - if the array is less than 3 elements long combine both elements with final delimeter
# - if the array is more than 2 elements and this is not the final element add a delimeter and space
# - if the array is more than 2 elements and this is the final element prepend the string number with the final delimeter 
# - push the string to the joined_string variable
# - return joined_string

p joinor([1, 2]) == "1 or 2"
p joinor([1, 2, 3]) == "1, 2, or 3"
p joinor([1, 2, 3], '; ') == "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and') == "1, 2, and 3"
p joinor([1]) == '1'