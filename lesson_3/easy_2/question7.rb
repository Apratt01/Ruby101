flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.append("Dino", "Hoppy")

p flintstones

#How can we add multiple items to our array? (Dino and Hoppy)
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.push("Dino").push("Hoppy")

p flintstones

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.concat(%w(Dino Hoppy))

p flintstones