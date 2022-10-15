# Write a method that takes one argument, an array containing integers, and 
# returns the average of all numbers in the array. The array will never be 
# empty and the numbers will always be positive integers. Your result should 
# also be an integer.

# take an array full of integers, return the average

# input = array of integers
# output = integer

# array is never empty
# numbers always positive

# iterate over the array
# add the numbers up
# count the numbers
# divide the total by the count

def average(number)
  total = 0
  count = 0
  
  number.each do |num|
    total += num
    count += 1
  end 
  
  total / count
  
  
end 



puts average([1, 6]) == 3.0 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25.0
puts average([9, 47, 23, 95, 16, 52]) == 40.0