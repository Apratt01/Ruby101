# Build a program that randomly generates and prints Teddy's age. To get the 
# age, you should generate a random number between 20 and 200.

# Modify this program to ask for a name, and then print the age for that person. 
# For an extra challenge, use "Teddy" as the name if no name is entered.

# Example output
# Teddy is 69 years old!

# array of numbers to set the range
# generate a random sample from the array
# puts in a string
 

puts "What is your name?"
name = gets.chomp

if name == ''
  name = "Teddy"
end 

age = (20..100).to_a

puts "#{name} is #{age.sample} years old!"