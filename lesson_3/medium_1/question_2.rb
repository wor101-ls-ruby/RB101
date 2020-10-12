# question_2.rb

# The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?
# The result of 40+2 is an integer and cannot implicitly be converted to a a string 

puts "Solution 1:"
puts "the value of 40 + 2 is " + (40 + 2).to_s
puts ""

puts "Solution 2:"
puts "the value of 40 + 2 is #{(40 + 2)}"   # string interpolation
