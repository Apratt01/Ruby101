=begin

Write a method that will take a short line of text, and print it within a box.

print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

Take a string, take the lenght of the string.
print a + to start, then dashes + 2 for the length of the string.
End with a +
Print | plus length of string + 2 end with |
print | plus a ' ' plus the string plus a space plus a |
repeat line three
repeat line 1

=end

def print_in_box(words)
  
  size_of_box = words.size
  puts "+-#{"-" * size_of_box}-+"
  puts "| #{" " * size_of_box} |"
  puts "| #{words} |"
  puts "| #{" " * size_of_box} |"
  puts "+-#{"-" * size_of_box}-+"
end 



print_in_box('To boldly go where no one has gone before.')
print_in_box('')

