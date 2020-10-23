def staggered_case(string)
  count = 0
  result = string.chars.map do |char|
    count.even? ? char.upcase! : char.downcase!
    count += 1
    char
  end
  p result.join
end



def staggered_case_userchoice(string, start = 0)
  count = start
  result = string.chars.map do |char|
    count.even? ? char.upcase! : char.downcase!
    count += 1
    char
  end
  p result.join

end



# - Create a new array named chars
# - Set each element of chars equal to a single character of the input string
# - iterate over chars using #map to return a transformed array
#   - If index location of current character is even then upcase
#   - Else downcase
# - return transformed array









# p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
# p staggered_case('ALL_CAPS') == 'AlL_CaPs'
# p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

p staggered_case_userchoice('I Love Launch School!', 1) == 'i lOvE LaUnCh sChOoL!'
p staggered_case_userchoice('ALL_CAPS', 0) == 'AlL_CaPs'
p staggered_case_userchoice('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'