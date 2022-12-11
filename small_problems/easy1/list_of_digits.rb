# Write a method that takes one argument, a positive integer, and returns a 
# list of the digits in the number.



# write a method that takes a positive number and returns a list of the digits

# input is an integer
# output is an array

# turn it into a string
# iterate over the number
# put it into an array
# return the array

def digit_list(number)
    number.to_s.chars.map do |num|
      num.to_i
    end 
end

#alternative

def digit_list(number)
  number.to_s.chars.map { |char| char.to_i }
end 

#alternative
def digit_list(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end

#alternative
def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true