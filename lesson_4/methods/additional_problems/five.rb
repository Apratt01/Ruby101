flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)



index = flintstones.index do |word|
  word[0,2] == "Be"
end 

puts index
