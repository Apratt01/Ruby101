# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

#Returns an array of objects rejected by the block.

#With a block given, calls the block with successive elements; returns an 
#array of those *elements* for which the block returns nil or false:

#Since puts always returns nil, this will return an array of [1, 2, 3]