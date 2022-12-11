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

def sum_of_numbers(number)
  (1..number).inject(:+)
end

def product_of_numbers(number)
  (1..number).inject(:*)
end 

loop do  
  puts "Please enter an integer greater than 0: "
  num = gets.chomp.to_i
  puts "Enter 's' to compute the sum, 'p' to compute the product. "
  choice = gets.chomp.downcase

  if choice == 's'
    sum = sum_of_numbers(num)
    puts "The sum of the integers between 1 and #{num} is #{sum}."
  elsif choice == 'p'
    product = product_of_numbers(num)
    puts "The product of the integers between 1 and #{num} is #{product}."
  else
    puts "That is an invalid selection."
    break
  end
end 


