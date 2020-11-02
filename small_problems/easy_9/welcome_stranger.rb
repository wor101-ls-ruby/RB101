def greetings(array, hash)
  
  full_name =  array.join(' ')
  puts "Hello, #{full_name}! Nice to have a #{hash[:title]} #{hash[:occupation]} around."
end


# **Algorithm**
# - Create return string and set it equal to "Hello, "
# - join the elements of the input arrray with whitepsace and push to the return string
# - Add hash title and occupation to return string
# - return string



greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.
