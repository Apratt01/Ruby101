# Write a method that takes one integer argument, which may be positive, 
# negative, or zero. This method returns true if the number's absolute value 
# is odd. You may assume that the argument is a valid integer value.

# Integer that is given, checked to see if it is odd, positive or negative
# doesn't matter. Retrun true if it is odd, return false if it is not.

# Interger can be any value, + - or 0
# Output is a boolean

# Method takes a one argument, a number
# If the number == 0 return false
# if the number % == 0 return false
# else return true

def is_odd?(number)
  number % 2 == 1
end


puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true