# question_9.rb

# Consider these two simple methods:

def foo(param = "no")
  "yes"                     # param is not used so this will always return yes because the parameter passed to it doesn't matter
end

def bar(param = "no")         # defaults to input of "no" which would make statement true and return value of "yes"
  param == "no" ? "yes" : "no" # if a yes is passed to it then it returns "no"
end

# What would be the return value of the following method invocation?

bar(foo) # returns no