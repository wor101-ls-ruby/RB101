# Our countdown to launch isn't behaving as expected. 
# Why? Change the code so that our program successfully counts down from 10 to 1.

def decrease(counter)
  counter -= 1
end

counter = 10

until counter == 0
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'