# How would you modify this code to print just the public methods that are 
# defined or overridden by the String class? 

s = 'abc'
puts s.public_methods.inspect

s = 'abc'
puts s.public_methods(false).inspect