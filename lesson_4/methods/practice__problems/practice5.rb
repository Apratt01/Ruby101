# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# Check the docs
# Removes the first hash entry (see Entry Order); returns a 2-element Array 
# containing the removed key and value: 

# code should return [:a, 'ant', :b, 'bear']