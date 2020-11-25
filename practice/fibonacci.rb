=begin
**Problem**
 "select the element out of the array if its index is a fibonacci number",

Rules:
Explicit
  - Input: an Array
  - Output: an Array
  - fibonacci numbers start with 1, 1 and then equal the sum of the prior to numbers
Implicit
  - we dont know how big the integers in the input array can be
  - we dont know the size of the arrays

**Examples / Test Cases**
select_fib_numbers([1,2,3,4,5,6,7,13]) == [1,2,3,5,13]

**Data Structures**
- input array
- output array
- array of fib numbers

**Algorithm**
1. find maximum value in the input array
2. create array of fib numbers at least up to the maximum value of the input array
3. use the # select method to iterate over the array and return any values that are also in the fib array
4. return the new array

=end
def create_fib(maximum)
  fib_numbers = [1, 1]
  
  until fib_numbers.max >= maximum
    fib_numbers << fib_numbers[-2..-1].sum
  end
  p fib_numbers
end


def select_fib_numbers(input_array)
  fib_numbers = create_fib(input_array.max)
  
  input_array.select { |int| fib_numbers.include?(int) }
  
end



p select_fib_numbers([1,2,3,4,5,6,7,13]) == [1,2,3,5,13]