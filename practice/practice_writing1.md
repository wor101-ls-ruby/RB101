arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
new_array = arr.select do |n| 
 n + 1
 end
p new_array

What does the code output and/or return? Why? and What concept does the example demonstrate?

p will output an array of [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]. It will also return array [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].
This demonstrates how the #selection method cares only about the truthiness of the block passed to it.
The #selection method iterates over each variable in the array and evaluates the block. If the block returns a truthy
value, the current element of the array is returned as part of a new array. In Ruby, any value besides nil or false 
are considered truthy. Therefore, the block returns a truthy value when returning an integer after evaluating n + 1.


***Example1****
What does the following code return? What does it output? Why? What concept does it demonstrate?

  a = ‘Hello’
  b = a
  a = 'Goodbye

On line 1 the local variable `a` is assigned to the string object 'Hello'. It will return the string object 'Hello'. On line 2 the local variable
`b` is assigned to the value of variable `a`. `b` now points to the same string object in memory as `a` which 
has a value of 'Hello'. This line will retrn the string 'Hello'. On line 3 `a` is reassigned to the string object 'Goodebye'. Assignment is non-mutating,
and thus `a` points to a new object in memory while `b` still points to the original string object 'Hello'. This demonstrates how variables work as pointers
to objects in memory.

***Example2***
What does the following code return? What does it output? Why? What concept does it demonstrate?

  a = 4
  
  loop do
    a = 5
    b = 3
    break
  end
  
  puts a
  puts b

On line one the local variable `a` is assigned to the integer value of 4.  On line 3 the `loop` method is invoked and 
the block on line 35-37 is passed to it. On line 4 `a` is resassigned to the integer value of 5. On line 6 the local variable `b`
is assigned to the integer value of 3. On line 6 `break` is called and the loop is terminated. On line 9 the `puts` method is invoked
and passed variable `a` as an argument. It will output the integer 5 and return nil. On line 10 the `puts` method is invoked again
and passed variable `b` as an arguemnt. This will throw an error saying 'undefined local variable' as variable `b` was initialized within the loop and is not accesible outside it.
Variables initialized outside a loop are accessible within, but methods initialized within are not accessible outside the loop. Therefore we are able
to reassign the value of `a` within the loop and access it outside the loop with the `puts` method. We are not able to access the `b` variable with the 
`puts` method because it was out of scope. This demonstrates variable scope.


**Example3**
What does the following code return? What does it output? Why? What concept does it demonstrate?

  a = 4
  b = 2
  
  loop do
    c = 3
    a = c
    break
  end
  
  puts a
  puts b
  
  **Example4**
  What does the following code return? What does it output? Why? What concept does it demonstrate?
  
  def example(str)
    i = 3
    loop do
      puts str
      i -= 1
      break if i == 0
    end
  end
  
  example('hello')
  
  On line 1 the method definition `example` accepts a single variable as a parameter. On line 2 a local variable `i` is assigned
  to the integer value of 3. On line 4 the `loop` method is invoked and passed the block on lines 4-6. On line 3 the `puts` method
  is invoked and outputs the `str` variable that was passed to the `example` method as an arguemtn. In this case it was passed the 
  string 'hello' when the method was invoked on line 10 and will output 'hello'. The puts method will return nil. Next on line 5
  the `i` variable is reassigned to the integer value of itself minus 1. Line 6 then checks to see if variable `i` is equal to integer
  value of 0. If so it breaks out of the loop. Until `i` equals 0 the loop will repeat and 'hello' will be output a total of 3 times.
  The loop returns the value nil and ultimately the method invocation of `example` on line 10 will return nil as well.
  