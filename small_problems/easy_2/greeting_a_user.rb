# greeting_a_user.rb

## Write a program that will ask for user's name. The program will then greet the user. If the user writes "name!" then the computer yells back to the user.

user_name = ''

print "What is your name?"
user_name = gets.chomp

if user_name.reverse.start_with?('!') # could also use .include() if we don't care where the ! appears in the name
  puts "HELLO #{user_name.upcase.delete_suffix('!')}. WHY ARE WE SCREAMING" 
else
  puts "Hello #{user_name}"
end

# lesson solution

print "What is your name?"
name = gets.chomp

if name[-1] == '!'          # negatives in arrays check from the end of the array to the front
  name = name.chop          # chop returns new string with last character removed
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end