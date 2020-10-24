# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |element| # can use two arguments for the block - one for the key and one for the value. makes it simpler
  element[1].each do |string|
    string.chars.each { |char| puts char if char.match?(/[aeiouAEIOU]/)}
  end
end