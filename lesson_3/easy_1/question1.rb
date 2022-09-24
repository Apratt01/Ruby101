numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# I would expect this to print out 1, 2, 2, 3. numbers.uniq does not mutate the array.
# In order to use it as expected you would need to assign to a variable or 
# puts numbers.uniq, which would print out as 1,2,3 but the original array numbers
# would still contain 1, 2, 3, 3

