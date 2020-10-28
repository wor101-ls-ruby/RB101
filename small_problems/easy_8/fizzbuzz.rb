def fizzbuzz(int1, int2)
  result_array =[]
  (int1..int2).each do |int| 
    if int % 3 == 0 && int % 5 == 0
      result_array << "FizzBuzz"
    elsif int % 5 == 0 
      result_array << "Buzz"
    elsif int % 3 == 0
      result_array << "Fizz"
    else
      result_array << int.to_s
    end
  end
  puts result_array.join((', '))  
end

# could write it as two methods and use a case statement


# **Algorithm**
# - create result array
# - create array of integers using first input integer as first value and second input integer as final value
# - iterate over the array 
#   - if number is divisible by 3 and 5 push "FizzBuzz" to the array
#   - else if number is divisible by 5 push "Buzz" to the array
#   - else if number is divisible by 3 push "Fizz" to the array
#   - else push string version of integer to array
# - return array joined with commas inserted


fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz