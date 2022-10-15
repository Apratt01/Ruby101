# Write a method that takes one argument, a string containing one or more words, 
# and returns the given string with words that contain five or more characters 
# reversed. Each string will consist of only letters and spaces. Spaces should 
# be included only when more than one word is present.

# take a string, if the words have more than 5 characters reverse them.

# input = string
# output = string

# Iterate over the given string
# check if the length the words > 5
# if > 5 reverse the word
# put all words into the same string

def reverse_words(string)
  
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')

end 


puts reverse_words('Professional') == "lanoisseforP"
puts reverse_words('Walk around the block')  == "Walk dnuora the kcolb"
puts reverse_words('Launch School') == "hcnuaL loohcS"

