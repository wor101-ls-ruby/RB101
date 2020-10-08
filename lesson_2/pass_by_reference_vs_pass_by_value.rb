# pass_by_reference_vs_pass_by_value.rb

def change_name(name)
  name = 'bob'      # does this reassignment change the object outside the method?
end

name = 'jim'
change_name(name)
puts name           # => jim


def cap(str)
  str.capitalize!   # does this affect the object outside the method?
end

name = "jim"
cap(name)
puts name           # => Jim

