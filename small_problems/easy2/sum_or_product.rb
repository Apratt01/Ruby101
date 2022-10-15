=begin
Write a program that asks the user to enter an integer greater than 0, then asks 
if the user wants to determine the sum or product of all numbers between 1 and 
the entered integer.

input = integer
output = integer

prompt for integer > 0
prompt for sum or product
loop through range
add or multiply depending
output answers

Examples:
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.

=end

puts "Please enter an integer great than 0: "
last = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product. "
type = gets.chomp

temps = 1
tempp = 1
(2..last).each do |num|
  if type == 's'
    temps += num
  else
    tempp *= num
  end 
end 

if type == 's'
  puts "The sum of the integers between 1 and #{last} is #{temps}."
else 
  puts "The product of the integers between 1 and #{last} is #{tempp}."
end 



