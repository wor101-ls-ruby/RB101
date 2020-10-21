# Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hash = {}
flintstones.each { |member| hash[member] = flintstones.index(member)}
p hash

flintstones_hash = {}
flintstones.each_with_index { |member, index| flintstones_hash[member] = index }
p flintstones_hash