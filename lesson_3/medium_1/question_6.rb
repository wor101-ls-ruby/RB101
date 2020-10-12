# question_6.rb

# what is the output of the following code

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# should output 34
# the '+=' operator in the method reassigns the the result to a new memory location and does not mutate the caller (.e the original variable 'answer' is unmodified by the method)