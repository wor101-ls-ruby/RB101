# good_vs_bad_questions.rb

# Bad Question - Can I access a constant that's defined outside a method? Yes!

NUMBERS = [1, 2, 3]
arr = [1, 2, 3]

def test 
  puts NUMBERS.inspect
  puts arr.inspect
end 

test 