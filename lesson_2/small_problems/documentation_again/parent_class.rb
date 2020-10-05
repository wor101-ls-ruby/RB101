# parent_class.rb

# use irb to run the following code

s = 'abc'
# puts s.public_methods.inspect # need to change method call to public_methods(all=false)

 puts s.public_methods(false).inspect  
 
 # even if you know a superclass has a particular method, make sure to check the subclass
 # a subclass method can and often does overivde the superclass method