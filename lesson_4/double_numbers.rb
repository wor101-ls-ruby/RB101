# double_numbers.rb

def double_numbers(numbers)
  double_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size
    current_number = numbers[counter]
    double_numbers << current_number * 2

    counter += 1
  end

  double_numbers
end

def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size
    numbers[counter] = numbers[counter] * 2 # could be shortened to numbers[counter] *= 2
    counter += 1
  end
  numbers
end

def double_odd_numbers(numbers)
  counter = 0
  doubled_odd_numbers = []

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if current_number.odd?
    doubled_odd_numbers << current_number
    
    counter += 1
  end
  doubled_odd_numbers
end

def double_odd_indices(numbers)
  doubled_odd_indices = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    current_number *= 2 if counter.odd?

    doubled_odd_indices << current_number
    counter += 1
  end

  doubled_odd_indices
end

def multiply(numbers, multiplier)
  multiplied_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter] * multiplier
    multiplied_numbers << current_number

    counter += 1
  end

  multiplied_numbers
end


my_numbers  = [1, 4, 3, 7, 2, 6]

# p double_numbers(my_numbers)

# p double_numbers!(my_numbers)
# p my_numbers

# p double_odd_numbers(my_numbers)
# p my_numbers

# p double_odd_indices(my_numbers)
# p my_numbers

p multiply(my_numbers, 3) 