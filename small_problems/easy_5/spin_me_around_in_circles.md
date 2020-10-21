**Problem**
You are given a method named spin_me that takes a string as an argument and returns a string that contains the same words, 
but with each word's characters reversed. Given the method's implementation, will the returned string be the same object as 
the one passed in as an argument or a different object?

# no, once it is split into an array it is impossible to point back to the original object


**Examples / Test Cases**
def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

