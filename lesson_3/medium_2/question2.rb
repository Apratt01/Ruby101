a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id

# In this case all three have the same object id because integers are immutable
# Therefore they all have the same object id