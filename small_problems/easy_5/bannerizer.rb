def line1and5(width)
  output_string = '+'
  (width -2).times { |i| output_string << '-' }     # could use '-' * (message.size + 2)
  output_string << '+'
end

def line2and4(width)
  output_string = '|'
  (width -2).times { |i| output_string << ' ' }
  output_string << '|'
end

def line3(string)
  output_string = '| ' + string + ' |'
end 

def print_in_box(string)
  width = string.length + 4
  lines_1_and_5 = line1and5(width)
  lines_2_and_4 = line2and4(width)
  line_3 = line3(string)
  
  puts lines_1_and_5 + "\n" + lines_2_and_4 + "\n" + 
        line_3 + "\n" + lines_2_and_4 + "\n" + lines_1_and_5
end






# **Algorithm**
# - Create Integer called width 
# - Create Strings called line1, line2, line3, line4, line5
# - Set width to equal length of the string + 4
# - set line1 and line5
# - set line2 and line4
# - set line3
# - puts line1 through line5

print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+


print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+

print_in_box("Hello evil world!")