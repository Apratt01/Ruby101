=begin
Given a string of words separated by spaces, write a method that takes this 
string of words and returns a string in which the first and last letters of 
every word are swapped.

You may assume that every word contains at least one letter, and that the string 
will always contain at least one word. You may also assume that each string 
contains nothing but words and spaces

Split the string into a list
iterate through the list
use a temp varialble to swap the 1st and last
change the list back into a string


=end
def swap_letters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end 

def swap(words)
  new_words = words.split.map do |word|
    swap_letters(word)
  end 
  new_words.join(' ')
end 
  


puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'