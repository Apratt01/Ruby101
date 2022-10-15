# Write a method that takes one argument, a string, and returns a new string 
# with the words in reverse order.


# write a method that reverse a string
# input is one string
# output is one string

# Iterate over the string
# Enumerate and swap indexes

def reverse_sentence(sentance)
  
  sentance.split.reverse.join(' ')
  
end

puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''