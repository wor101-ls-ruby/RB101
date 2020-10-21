# Find the index of the first name that starts with "Be"

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

index_of_Be = nil

flintstones.each_with_index do |name, index| 
  if name.match('Be')
    index_of_Be = index
    break
  else
    next
  end
end

p index_of_Be

flintstones.index { |name| name[0, 2] == "Be" }