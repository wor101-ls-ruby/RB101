# def longest_sentence(document)
#   sentences = document.split(/[.!?]/)
#   sentence_length = 0
#   longest = ''
#   sentences.each do |sentence| 
#     if sentence.split.size > sentence_length
#       sentence_length = sentence.split.size
#       longest = sentence
#     end
#   end
#   p longest 
#   p sentence_length
# end

def longest_sentence(string)
  sentences = string.split(/[.!?]/)
  largest_sentece = sentences.max_by { |sentence| sentence.split.size }
  number_of_words = largest_sentece.split.size
  puts largest_sentece
  puts number_of_words
end

# longest_sentence(gettysburg)

frankenstein = IO.read("frankenstein.txt")

test_string = "Hello there. How are you? this is dumb, don't you think!"

gettysburg = "Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the
earth."

longest_sentence(test_string)

longest_sentence(gettysburg)

longest_sentence(frankenstein)

# **Algorithm**
# 1. Take input string and spit it into an array by (.), (!), or (?)
# 2. Iterate over the array and find out how many words are in each element
# 3. return the element with the most words
# 4. print that string plust the number of words in it





