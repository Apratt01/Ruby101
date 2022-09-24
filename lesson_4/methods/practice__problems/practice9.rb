# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

=begin 

Returns an array of objects returned by the block.

With a block given, calls the block with successive elements; returns an array 
of the objects returned by the block:

(0..4).map {|i| i*i }                               # => [0, 1, 4, 9, 16]
{foo: 0, bar: 1, baz: 2}.map {|key, value| value*2} # => [0, 2, 4]
With no block given, returns an Enumerator.

should return [nil, bear]