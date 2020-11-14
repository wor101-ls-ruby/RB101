

def fibonacci(int)
  fib_position = 0
  two_numbers = [0, 1]
  
  until fib_position == int
    two_numbers[0], two_numbers[1] = two_numbers[1], two_numbers.sum
    fib_position += 1
  end
  two_numbers[0]  
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501