=begin
**Problem**
Let's build another program using madlibs. We made a program like this in the easy exercises. 
This time, the requirements are a bit different.

Make a madlibs program that reads in some text from a text file that you have created, 
and then plugs in a selection of randomized nouns, verbs, adjectives, and adverbs into that text and prints it. 
You can build your lists of nouns, verbs, adjectives, and adverbs directly into your program, but the text data should come from a file or other external source. 
Your program should read this text, and for each line, it should place random words of the appropriate types into the text, and print the result.

The challenge of this program isn't about writing your program; it's about choosing how to represent your data. 
Choose the right way to structure your data, and this problem becomes a whole lot easier. 
This is why we don't show you what the input data looks like; the input representation is your responsibility.

Rules:
Explicit
  - Input:
  - Output:

**Examples / Test Cases**
  Output:
  The sleepy brown cat noisily
  licks the sleepy yellow
  dog, who lazily licks his
  tail and looks around.
  
  Text Data:
  The %{adjective} brown %{noun} %{adverb}
  %{verb} the %{adjective} yellow
  %{noun}, who %{adverb} %{verb} his
  %{noun} and looks around.
  
  Replacement Words:
  adjectives: quick lazy sleepy ugly
  nouns: fox dog head leg
  verbs: jumps lifts bites licks
  adverb: easily lazily noisily excitedly

**Data Structures**
- Hash { adjective: %w(quick lazy sleepy ugly), noun: %(fox dog head leg), verb: %(jumps lifts bites licks), adverb: %w(easily lazily noisily excitedly)
- Text file to hold input text
- Array to hold each line of the text file that is imported

**Algorithm**
1. Initialize a Hash to hold replacement words
2. Initialize variale madlib_array 
3. set madlib_array so each element is equal to one line of text from the madlibs text file
3. Iterate over each line of the madlib_array
4. for each line replace any %{adjective}, %{noun}, %{adverb} and   %{verb} with a randomly selected word from the Hash
5. Print each element of the now modified array
=end

def madlibs(file)
  replacement_words = { adjective: %w(quick lazy sleepy ugly), 
                        noun: %w(fox dog head leg), 
                        verb: %w(jumps lifts bites licks), 
                        adverb: %w(easily lazily noisily excitedly)
                      }
  
  madlib_array = File.read(file).split(/\n/)
  
  madlib_array.each do |line|
    new_line = line.gsub('%{adjective}', replacement_words[:adjective].sample)
    new_line.gsub!("%{noun}", replacement_words[:noun].sample)
    new_line.gsub!("%{verb}", replacement_words[:verb].sample)
    new_line.gsub!("%{adverb}", replacement_words[:adverb].sample)
    puts new_line
  end
  
end

def madlibs_alt(file)
  replacement_words = { adjective: %w(quick lazy sleepy ugly), 
                        noun: %w(fox dog head leg), 
                        verb: %w(jumps lifts bites licks), 
                        adverb: %w(easily lazily noisily excitedly)
                      }
  
  madlib_array = File.read(file).split(/\n/)
  madlib_array.each do |line|
    puts format(line, noun:       replacement_words[:noun].sample,
                      adjective:  replacement_words[:adjective].sample,
                      adverb:     replacement_words[:adverb].sample,
                      verb:       replacement_words[:verb].sample)
  end
end



# madlibs('madlibs_text.txt')
madlibs_alt('madlibs_text.txt')