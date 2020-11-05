require 'pry'

# def balanced?(input_string)
#   characters = input_string.chars
#   balanced = true
#   start_finish = true

#   characters.each do |char|
#     # binding.pry
#     if char == '(' && start_finish == false
#       balanced = false
#       break
#     elsif char == ')' && start_finish == true
#       balanced = false
#       break
#     elsif char == '(' || char == ')'
#       start_finish = !start_finish
#     end
#   end
#   puts " "
#   balanced == true && start_finish == true ? true : false
# end

start_chars = ['(', '{', '[', "'", "\""]
finish-chars = [')', '{', '[', "'", "\""]

def balanced?(input_string)
  parentheses = input_string.chars.select { |char| char == '(' || char == ')' }

  if parentheses == []
    true
  elsif parentheses.count('(') == parentheses.count(')')
    parentheses[0] == ('(') && parentheses[-1] == (')') ? true : false
  else
    false
  end
end


def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end


# **New&Improved Algorithm**
# 1. turn input string into an array of characters
# 2. create an array of only the parentheses
# 3. create return boolean
# 3. count number of '(' and ')'
# 4. if numbers are not equal set return false
# 5. if numbers are equal confirm first element is '(' and last element is ')'
#   - if true then return true
#   - if false then return false


# **Algorithm**
# 1. turn input string into an array of characters
# 2. create return boolean and set to true
# 3. create a variable to track if parentheses is expected to be start or finish
# 3. iterate over the characters in the array
#   - if char matches '(' or ')' then check start or finish variable
#     - if char is ')' and start_finish is 'start' then set return boolean to false and break
#     - if char is '(' and start_finish is 'finish' then set return boolean to false and break
#     - else swap start variable and continue
# 4. once done iterating, if return boolean is false then return false
# 5. else check if the start_finish equals start
#   - if yes then return true
#   - if no then return false

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false