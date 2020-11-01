def repeater(input_string)
  output_string = ''
  input_string.chars.each { |char| output_string << (char * 2) }
  output_string
end




# **Algorithm**
# - iterate over each character of the input string
# - push each character to the output string twice
# - return the output string



p repeater('Hello') #== "HHeelllloo"
p repeater("Good job!") #== "GGoooodd  jjoobb!!"
p repeater('') #== ''