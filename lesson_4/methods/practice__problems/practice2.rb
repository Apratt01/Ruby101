# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

=begin 

If we don't know how count treats the block's return value, then we should 
consult the docs for Array#count. Our answer is in the description:

If a block is given, counts the number of elements for which the block returns 
a true value.

Based on this information, we can conclude that count only counts an element if 
the block's return value evaluates as true. This means that count considers the 
truthiness of the block's return value.


string#count returns the count of elements based on an argument or block criterion
When no argument or block, it returns the number of elements.
So in this case the criteria is when the string lenght is less than 4
It should return 2

=end