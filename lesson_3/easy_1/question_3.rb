# question_3.rb

# replace the word "important" with "urgent" in this string

advice = "Few things in life are as important as house training your pet dinosaur."

array = advice.split.map! { |word| word == 'important' ? word = 'urgent' : word } 

advice = array.join(' ')

puts advice

lesson_advice = "Few things in life are as important as house training your pet dinosaur."
puts " "
lesson_advice.gsub!('important', 'urgent')
puts lesson_advice