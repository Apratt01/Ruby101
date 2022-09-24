ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

# add ages for Marilyn and Spot to the existing hash

ages.merge!(ages, additional_ages)

p ages