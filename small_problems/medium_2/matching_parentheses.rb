require 'pry'

def balanced?(input_string)
  characters = input_string.chars
  balanced = true
  start_finish = true

  characters.each do |char|
    # binding.pry
    if char == '(' && start_finish == false
      balanced = false
      break
    elsif char == ')' && start_finish == true
      balanced = false
      break
    elsif char == '(' || char == ')'
      start_finish = !start_finish
    end
  end
  puts " "
  balanced == true && start_finish == true ? true : false
end

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