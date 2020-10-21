# Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! { |name| name[0..2] }  # could also do [0, 3] where the 3 tells it to grab 3 chars total

p flintstones