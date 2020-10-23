def letter_case_count(string)
  result = { lowercase: 0, uppercase: 0, neither: 0 }

  string.chars.each do |char|
    if char.match?(/[a-z]/)
      result[:lowercase] += 1
    elsif char.match?(/[A-Z]/)
      result[:uppercase] += 1
    else
      result[:neither] += 1
    end
  end
  p result
end

# the #count method allows you to pass an object and use regexp to check how many exist in a string



# **Algorithm**
# - Create new Array variable called chars 
# - Create new Hash = ( lowercase: 0, upppercase: 0, neither: 0)
# - splilt the input string and set chars equal to the resulting array
# - Iterate over chars using #each
#   - use #match? with regexp to check if element is uppercase, lowercase or neither
#   - for each match update hash value for the related key by += 1
# - return hash




p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }