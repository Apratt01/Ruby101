numbers = [1, 2, 3, 4, 5]

# What do the following method calls do 
# (assume we reset numbers to the original array between method calls)?

numbers.delete_at(1)
puts numbers
p numbers

# delete_at removes the element at index 1 and returns a mutated array

numbers = [1, 2, 3, 4, 5]
numbers.delete(1)

puts numbers
p numbers

# delete(1) removes the element labeled 1 from the array and returns a mutated array