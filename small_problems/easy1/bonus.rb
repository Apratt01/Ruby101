# Write a method that takes two arguments, a positive integer and a boolean, 
# and calculates the bonus for a given salary. If the boolean is true, the 
# bonus should be half of the salary. If the boolean is false, the bonus 
# should be 0.

# take a number and a boolean, if true bonus = 1/3, if flase bonus = 0

# input integer and boolean
# compare the boolean
# divide the integer by 2 if true
# integer is zero otherwise

def calculate_bonus(number, bool)
  
  bool ? number / 2 : 0
  
end 

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000