

def remove_vowels(input_array)

  p new_array = input_array.map { |string| string.gsub(/[aeiouAEIOU]/, '')  }  # CAN USE Delte method string.delete('aeiouAEIOU') }
  
end




# **Algorithm**
# - create a new_array 
# - iterate throught the input_array
# - for each string remove any vowels and push the modified string to new_array
# - return the new_array





p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']