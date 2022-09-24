ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# three hash methods see if "Spot" is present.

p ages.key?("Spot")
p ages.include?("Spot")
p ages.member?("Spot")
