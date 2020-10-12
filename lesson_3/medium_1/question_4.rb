# question_4.rb

## Alyssa was asked to write an implementation of a rolling buffer. Elements are added to the rolling buffer and if the buffer becomes full, 
 # then new elements that are added will displace the oldest elements in the buffer.

 # She wrote two implementations saying, "Take your pick. Do you like << or + for modifying the buffer?". Is there a difference between the two, 
 # other than what operator she chose to use to add an element to the buffer?
 
 def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element                                     
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# in rolling_buffer1 '<<' mutates the caller and will modify any other variables pointing to the same memory lcoation as buffer
# in rolling_buffer2 '+' is an assignment operator and creates a new object at a new location in memory.  Anything pointing to the originally memory location of buffer will remain unchanged
# secondly the variable 'buffer' is never passed to the method in the second version. In the first, since it is passed the new element well modify the original variable outside the method. 
# In the second the original variable is never modified and a new array is created and returned.