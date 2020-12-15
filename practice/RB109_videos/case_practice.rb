require 'prime'


a = "This is a Test String"
b = "HELLO"
c = "goodbye"


p /[[:lower:]]/.match?(a[0])

def is_upcase?(char)
  char == char.upcase
end

def is_downcase?(char)
  char == char.downcase
end

# p is_upcase?(a[0])
# p is_upcase?(a[1])

# p is_downcase?(b[0])

# Prime.each(100) { |prime| puts prime } 

p Prime.first(10)