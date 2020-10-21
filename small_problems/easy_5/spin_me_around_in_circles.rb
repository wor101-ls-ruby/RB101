def spin_me(str)
  p str.object_id
  str.split.each do |word|
    word.reverse!
  end.join(" ")
  
end

p spin_me("hello world").object_id # "olleh dlrow"
