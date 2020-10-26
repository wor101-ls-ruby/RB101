def leading_substrings(string)
  substrings = []
  chars_array = string.chars

  string.chars.each_index {|index| substrings << chars_array[0..index].join }

  substrings
end

def substrings(string)
  all_substrings = []
  string.length.times do |i|
    all_substrings << leading_substrings(string[i..-1])
  end
  all_substrings.flatten
end

def palindromes(string)
  substrings(string).select { |substring| substring.length > 1 && substring == substring.reverse }     
end

def palindromes_further(string)
  palindrome_array = []
  
  substrings(string).each do |substring|
    next if substring.gsub(/\W/, '').length <= 1
    if substring.gsub(/\W/, '').downcase == substring.gsub(/\W/, '').downcase.reverse  
      palindrome_array << substring.gsub(/\W/, '')
    end
  end    
  palindrome_array
end




# **Algorithm**
# - use leading_substrings & substrings method
# - create empty array called palindrome array
# - iterate over the return array from substrings
# - if the substring is only 1 char long go to the next substring
# - else check if the substring is equal to its reverse
# - if so then push the substring to the palindrome array
# - return the palindrome array




# p palindromes('abcd') == []
# p palindromes('madam') == ['madam', 'ada']
# p palindromes('hello-madam-did-madam-goodbye') == [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
# p palindromes('knitting cassettes') == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]

p palindromes_further('abcd') #== []
p palindromes_further('madam') #== ['madam', 'ada']
p palindromes_further('hello-madam-did-madam-goodbye')# == [
  # 'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  # 'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  # '-madam-', 'madam', 'ada', 'oo'
#]
 p palindromes_further('knitting cassettes') #== [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]