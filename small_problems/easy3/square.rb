=begin
Using the multiply method from the "Multiplying Two Numbers" problem, 
write a method that computes the square of its argument (the square is the 
result of multiplying a number by itself).

=end
def multiply(number1, number2)
  number1 * number2
end

def square(num1)
  multiply(num1, num1)
end 




puts square(5) == 25
puts square(-8) == 64