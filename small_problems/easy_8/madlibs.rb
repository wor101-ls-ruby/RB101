user_words = {noun: '', verb: '', adjective: '', adverb: ''}

user_words.each_key do | key |
  print "Enter a #{key}: "
  user_words[key] = gets.chop
end
story = "The hero's #{user_words[:noun]} was their only hope to defeat the #{user_words[:adjective]} lord." +
         " They would have to #{user_words[:verb]} quickly or else they would surely die a #{user_words[:adverb]} death."
puts story
