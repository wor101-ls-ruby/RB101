# question_5.rb

# Programmatically determine if 42 lies between 10 and 100.

p (11...100).include?(42)

p (10..100).cover?(42)  # should use .cover? because it checks if value is between beginning and end of range