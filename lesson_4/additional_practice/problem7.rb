# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"

statement_hash = {}

statement.chars.each do |char|
  if ('A'..'Z').include?(char) || ('a'..'z').include?(char)
    statement_hash[char] = statement.count(char)
  else
    next
  end
end

p statement_hash