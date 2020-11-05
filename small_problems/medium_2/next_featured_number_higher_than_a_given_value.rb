def divisible_by_seven(int)
  number = int + 1
  
  while number % 7 != 0
    number += 1
  end
  number
  
end


def featured(int)
  return_int = divisible_by_seven(int)

  loop do
    if return_int >= 9_999_999_999
      puts "ERROR"
      break
    elsif return_int.even?
      return_int += 7 
    elsif return_int.to_s.chars.all? { |num| return_int.to_s.chars.count(num) <= 1 }
      break
    else 
      return_int += 7
    end
  end
  
  p return_int
end



# **Algorithm**
# 1. create return integer variable
# 2. find the next number greater than the input number that is evenly divisible by 7
# 2. if it is even ten add 7 and repeat until odd
# 3. turn the input integer into an array of characters
# 4. if any duplicate characters in the array add 7 and go back to step 2
# 5. else return number



p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements