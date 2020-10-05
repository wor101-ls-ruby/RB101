# multiple_signatures.rb

# what do each of these puts statements output?

a = %w(a b c d e)
puts a.fetch(7)                       # throws IndexError
puts a.fetch(7, 'beats me')           # returns 'beats me' which is the default value returned if referenced index is outside the array bounds
puts a.fetch(7) { |index| index**2 }  # returns 49 as the block is only excecuted when an invalid index is referenced