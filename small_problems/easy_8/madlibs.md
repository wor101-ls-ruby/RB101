**Problem**
Mad libs are a simple game where you create a story template with blanks for words. 
You, or another player, then construct a list of words and place them into the story, 
creating an often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an 
adjective and injects those into a story that you create.

Rules:
Explicit
  - Input: 4 strings (noun, verb, adverb, adjective)
  - Output: a single string
  - must prompt the user 
Implicit
  - user is expected to enter correct words

**Examples / Test Cases**
Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

**Data Structures**
- { noun: 'string1', verb: 'string2', adjective: 'string3', adverb: 'string4'}
- string to tell the madlib

**Algorithm**
- Prompt the user for a noun
- store the noun in the hash
- repeat first two steps for verb, adjective, and adverb
- output story string with the hash strings concatanated 