array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# array1 is initialized to an array of strings
# array2 is intiitalized to an empty array
# the first each loop simply copies a bunch of references from array1 to array2.
# arry1. each then uses upcase to destruct the original string object in place
# in the array, modifying each string to all upper case if the string starts with
# C or S
# since array2 points to the same objects, and upcase! is a destructor method
# array 2 puts Moe Larry CURLY SHEMP Harpo CHICO Groucho Zeppo