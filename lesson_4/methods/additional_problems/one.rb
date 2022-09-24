# Turn this array into a hash where the names are the keys and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flinstones_hash = {}

flintstones.each_with_index do |key, i|
  flinstones_hash[key] = i
end

puts flinstones_hash