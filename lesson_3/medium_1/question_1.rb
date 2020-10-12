# question_1.rb

## Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens).

 # For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:
 # The Flinstones Rock!
 
 10.times { |i| puts 'The Flinstones Rock!'.rjust(20+i) }

# lesson solution
10.times { |number| puts (" " * number) + "The Flintstones Rock!" }
 