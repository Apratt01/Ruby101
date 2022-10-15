=begin

Write a program that will ask a user for an input of a word or multiple words 
and give back the number of characters. Spaces should not be counted as a 
character.

input = Please write word or multiple words: walk
output = There are 4 characters in "walk".
input = Please write word or multiple words: walk, don't run
output = There are 13 characters in "walk, don't run".
=end

# input string
# create a method to do the work
# use chars to convert string to array
# use select & count to iterate and count
# return count

def count_the_chars(sentence)
  sentence.chars.select.count {|letter| letter != ' '}
end 

puts "Please write word or multiple words: "
words = gets.chomp

puts "There are #{count_the_chars(words)} characters in \"#{words}\"."

