#The result of the following statement will be an error:

#puts "the value of 40 + 2 is " + (40 + 2)

#Why is this and what are two possible ways to fix this?

#puts "the value of 40 + 2 is " + (40 + 2)

#this is tryint to concantenate a string to an integer, the interger needs to be assigned to a 
# varialbe for the maths and then converted to a string

maths = 40 + 2
puts "the value of 40 + 2 is " + maths.to_s

# or change the maths part to string

puts "the value of 40 + 2 is " + (40+2).to_s

#or string interpolation

puts "the value of 40 + 2 is #{(40+2)}"