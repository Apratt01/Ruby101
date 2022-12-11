=begin 

Write a program that solicits 6 numbers from the user, then prints a message 
that describes whether or not the 6th number appears amongst the first 5 numbers.

input is an integer
output is a string and an integer
data structure is an array

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
18
The number 18 does not appear in [25, 15, 20, 17, 23].

get input from the user
place input into an array
place last input into its own variable
create a method to loop through the array to compare against the last variable
The method's return value will determine puts

=end

def number?(list_of_numbers, number_to_check)
  list_of_numbers.include?(number_to_check)
end

arr = []

puts "Enter the 1st number:"
arr << gets.chomp.to_i
puts "Enter the 2nd number:"
arr << gets.chomp.to_i
puts "Enter the 3rd number:"
arr << gets.chomp.to_i
puts "Enter the 4th number:"
arr << gets.chomp.to_i
puts "Enter the 5th number:"
arr << gets.chomp.to_i
puts "Enter the last number:"
num = gets.chomp.to_i

if number?(arr, num)
  puts "The number #{num} appears in #{arr}."
else
  puts "The number #{num} does not appear in #{arr}."
end 





