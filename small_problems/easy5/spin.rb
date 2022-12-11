=begin

You are given a method named spin_me that takes a string as an argument and 
returns a string that contains the same words, but with each word's characters 
reversed. Given the method's implementation, will the returned string be the 
same object as the one passed in as an argument or a different object?


=end

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

=begin
This method returns a different object. Once the string is split into an array
it becomes a new object.

The new array inside the block is mutated with the reverse!, but the join
method creates another new object.
=end
