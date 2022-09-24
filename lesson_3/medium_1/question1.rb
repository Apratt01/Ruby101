# For this practice problem, write a one-line program that creates the following output 10 times, 
# with the subsequent line indented 1 space to the right:


# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

statement = "The Flintstones Rock!"

10.times do
  |number| puts (" " * number) + statement
end

10.times { |number| puts (" " * number) + statement}

