# Write a method that takes two arguments, a string and a positive integer, 
# and prints the string as many times as the integer indicates.

# P = Write a method that takes a string and a positive number
# prints the string the number of times the number is.

# E 'Hello' as string , 3 as a character = 

=begin

Hello
Hello
Hello

=end

# D = Method, a string, a positive integer
# output = String with new line

# assumptions the string is not empty
# the number is positve
# not mutating the original string
# not creating a new string
# not returning anything

# A method with 2 parameters, string and number
# Iterate over the string as many times as is the number
# puts the output

def repeat(word, number)
  
  number.times do
    puts word
  end
  
end

repeat("Hello", 3)
repeat("World", 2)
repeat("Churn", 5)


