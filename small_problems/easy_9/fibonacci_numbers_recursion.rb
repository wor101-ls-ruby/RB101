# def fibonacci(int)
#   fibonacci_numbers =[]
#   (1..int).each do |i|
#     if i <= 2
#       fibonacci_numbers << 1
#     else
#       fibonacci_numbers << (fibonacci_numbers[i-2] + fibonacci_numbers[i-3])
#     end
#   p fibonacci_numbers[int - 1]
# end

def fibonacci(int)
  fib_position = 0
  two_numbers = [0, 1]
  
  until fib_position == int
    two_numbers[0], two_numbers[1] = two_numbers[1], two_numbers.sum
    fib_position += 1
  end
  two_numbers[0]  
end

def fibonacci(nth)
  return 1 if nth <= 2
  fibonacci(nth - 1) + fibonacci(nth - 2)
end

# def sum(n)
#   return 1 if n == 1
#   n + sum(n - 1)
# end

# F(1) = 1
# F(2) = 1
# F(n) = F(n - 1) + F(n - 2) where n > 2

# - Create a range from 1..to input integer represeting positions in sequence
# - create recursive method that starts at beginning of range and calculates fibonacci number for each position
# - push fibonacci number to a new array


def fibonacci_tail(nth, acc1, acc2)
  if nth == 1
    acc1
  elsif nth == 2
    acc2
  else
    fibonacci_tail(nth - 1, acc2, acc2 + acc1)
  end
end

def fibonacci(nth)
  fibonacci_tail(nth, 1, 1)
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(50) 