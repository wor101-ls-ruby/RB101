# question_6.rb

# starting with the string:

famous_words = "seven years ago..."

# show two different ways to put the expected "Four score and " in front of it.

# first way
famous_words = "seven years ago..."
p famous_words.prepend("Four score and ")

# second way
famous_words = "seven years ago..."
p famous_words = "Four score and " + famous_words

# third way
famous_words = "seven years ago..."
p "Four score and " << famous_words