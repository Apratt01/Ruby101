advice = "Few things in life are as important as house training your pet dinosaur."

# Replace the word "important" with "urgent" in this string:

advice["important"] = "urgent"
puts advice

advice.gsub!("urgent", "important")
puts advice