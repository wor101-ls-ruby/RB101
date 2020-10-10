# question_7.rb

# In the previous practice problem we added Dino to our array like this:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"

# We could have used either Array#concat or Array#push to add Dino to the family.

# How can we add multiple items to our array? (Dino and Hoppy

puts "Option 1"
p flintstones + ['Dino', 'Hoppy']

puts "Option 2"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts ''
p flintstones.push("Dino").push("Hoppy")

puts "Option 3"
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
puts ''
p flintstones.concat(%W(Dino Hoppy))