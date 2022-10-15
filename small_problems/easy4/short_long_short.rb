=begin 

Write a method that takes two strings as arguments, determines the longest of 
the two strings, and then returns the result of concatenating the shorter 
string, the longer string, and the shorter string once again. You may assume 
that the strings are of different lengths.

method that takes two strings
check length of both
concantenat strings in order of short long short

=end

def short_long_short(word1, word2)
  if word1.size > word2.size
    final = word2 + word1 + word2
  else 
    final = word1 + word2 + word1
  end 
  final
end 

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"