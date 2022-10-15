=begin
Write a program that prompts the user for two positive integers, and then 
prints the results of the following operations on those two numbers: addition, 
subtraction, product, quotient, remainder, and power. Do not worry about 
validating the input.

Example:

==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

input integer
create a method to do the math
run the math
output results

=end

def math_program(number1, number2)
  puts "#{number1} + #{number2} = #{number1 + number2}"
  puts "#{number1} - #{number2} = #{number1 - number2}"
  puts "#{number1} * #{number2} = #{number1 * number2}"
  puts "#{number1} / #{number2} = #{number1 / number2}"
  puts "#{number1} % #{number2} = #{number1 % number2}"
  puts "#{number1} ** #{number2} = #{number1 ** number2}"
end 

puts "Enter the first number:"
num1 = gets.chomp.to_i

puts "Enter the second number:"
num2 = gets.chomp.to_i

math_program(num1, num2)

