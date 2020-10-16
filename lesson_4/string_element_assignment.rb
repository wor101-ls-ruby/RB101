# string_element_assignment.rb

#Using the same element assignment method, how would you change the first letter of the remaining words in 
# the sentence to their uppercase versions? Try it out in a code file or in irb.

str = "joe's favorite color is blue"
str[0] = 'J'

str[6] = str[6].upcase
str[15] = 'C'
str[21] = 'I'
str[24] = 'B'

char_2 = str[1].upcase
p str
p char_2