# Write a method that counts the number of occurrences of each element in a 
# given array. The words in the array are case-sensitive: 'suv' != 'SUV'. 
# Once counted, print each element alongside the number of occurrences.

# Write a method that counts how many times an element is found in an array.
# Print each element wlongside the number of occurences

# input is an array
# output is a dictionary using p to put to the screen both key & pair

# create an empty dictionary 
# create a couting variable
# iterate over the array
# Each type = key
# Each type = count += 1
# Each count = value to the key

#Expected output
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end
  
count_occurrences(vehicles)
      


