my_numbers = [1, 4, 3, 7, 2, 6]
def multiply(my_numbers, mulitiplier) # => [3, 12, 9, 21, 6, 18]
  multiplied_numbers = []
  counter = 0
  
  loop do 
    
    break if counter = my_numbers.size
    
    multiplied_numbers << numbers[counter] * mulitiplier
    counter += 1
  end
    
  multiplied_numbers
end

     