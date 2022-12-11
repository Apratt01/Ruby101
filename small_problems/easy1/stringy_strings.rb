# Write a method that takes one argument, a positive integer, and returns a 
# string of alternating 1s and 0s, always starting with 1. The length of the 
# string should match the given integer.

# input = integer
# ouput = string

# integer is always positive
# output alwasy starts with 1
# lenght of string == the input integer
# alternates 10101010 based on the input integer

# iterate number of times the integer is
# check if the index is odd or even
# if it is even than 1 else 0
# push the 1s and 0s into an array
# use join to return a string

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? ? 1 : 0
    numbers << number
  end

  numbers.join
end

#alternative

def stringy(number)
  word = ''
  count = 0
  while count < number
    count.odd? ? word << '0' : word << '1'
    count += 1
  end 
  word
end 

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'