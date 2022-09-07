# START
# a method that returns the sum of two integers.
# 
# SET number1 = nil
# SET number2 = nil (to access outside of the method.)

# Method sum(number1, number2)
#   return number1 + number2
#

#END

#START
# a method that takes an array of strings, 
# and returns a string that is all those strings concatenated together

# SET arr_string = array of strings.
# SET string_added = nil for return variable

# Method concatate_string(arr_string)
#   Iterate over the arr_string
#   Add each word to string_added
#   Return string_added

# END

# START

# a method that takes an array of integers, and returns a new array with 
# every other element from the original array, starting with the first 
# element. 

# SET every_Other = array of integers
# SET arr_odd = []

# Method odd(every_other)
#   Iterate over every_other
#   IF every_other is odd then add to arr_odd
#   Return arr_odd

# END

# START

# a method that determines the index of the 3rd occurrence of a given character in a string. For instance, if the given character is 'x' and the string is 'axbxcdxex', the method should return 6 (the index of the 3rd 'x'). If the given character does not occur at least 3 times, return nil.

# SET string_to_check = string of letters
# SET count = 0 for iteration
# SET counted = nil for return
# SET char = char to check for

# Method third_occurance(string_to_check, char)
#   Iterate over every char in string_to_check
#   IF char is in string_to_check count += 1
#   
#   IF count >= 3
#     SET counted = count
#     Return counted
#   ELSE return

# END

# START

# a method that takes two arrays of numbers and returns the result of merging the arrays. The elements of the first array should become the elements at the even indexes of the returned array, while the elements of the second array should become the elements at the odd indexes

# SET first_array = array of numbers
# SET second_array = array of numbers
# SET new_array = []

# Method merge(first_array, second_array)
#   SET count1 = 0
#   SET count2 = 1
#   SET temp{} to hold numbers at index spot
#   Iterate over first_array 
#     for every number in first_array assign count to key and number to value in temp
#     add 2 to count to get even numbers as the key
#   Iterate over second_array assign count2 to key and number to value in temp
#     add 2 to count to get even numbers as the key and number to value in temp
#   Iterate over temp, use the keys as index numbers in the new_array
#     The values get added at the index number of the key
#   return new_array = values at keys

# END   