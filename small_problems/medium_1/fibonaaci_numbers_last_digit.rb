# def fibonacci_last(int)
#   first, last = [1, 1]
#   3.upto(int) do
#     first, last = [last, first + last]
#   end
#   p last % 10
# end

# def fibonacci_last(nth)
#   last_2 = [1, 1]
#   3.upto(nth) do
#     last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
#   end

#   last_2.last
# end

def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last % 10, (last_2.first % 10 + last_2.last % 10) % 10]
  end

  last_2.last
end

# p fibonacci_last(1)
# p fibonacci_last(2)
# p fibonacci_last(3)
# p fibonacci_last(4)
# p fibonacci_last(5)
# p fibonacci_last(6)            


p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(25)   
p fibonacci_last(30)
p fibonacci_last(11)    
p fibonacci_last(12)  
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4