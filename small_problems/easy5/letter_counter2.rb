=begin 

Write a method that takes a string with one or more space separated words and 
returns a hash that shows the number of words of different sizes.

Modify the word_sizes method from the previous exercise to exclude non-letters 
when determining word size. For instance, the length of "it's" is 3, not 4.

Words consist of any string of characters that do not include a space.

Algorithm
length of the word = key
count of same lengths of words = value
use map to iterate through the string
if lenght of word is not in dictionary, then add length and value of 1
if length word is in dictionary the value + 1
=end

def word_sizes(words)
  counts = Hash.new(0)
  words.split.each do |word|
    word.gsub(/.!?'/, "")
    counts[word.size] += 1
  end 
  counts
end 


puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}