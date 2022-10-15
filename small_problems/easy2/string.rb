name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# This prints out Alice Bob

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# This should pring out BOB BOB
# the variable name is initialized the string object Bob
# the variable save_name is pointed to the same object as name
# name.upcase! is a destructor method that permanently changes the object both
# variables are pointed to in place.
# both variables then hold BOB