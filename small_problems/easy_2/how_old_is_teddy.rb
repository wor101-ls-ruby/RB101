# how_old_is_teddy.rb

# Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

# Example outut Teddy is 69 years old!

def random_age(name = "Teddy")
  puts "#{name} is #{rand(20..200)} years old!"
end 

puts "Teddy is #{(20...200).to_a.sample} years old!"

# lesson solution
age = rand(20..200)
puts "Teddy is #{age} years old!"

puts "Enter your name:"
user_name = gets.chomp

random_age(user_name)
random_age