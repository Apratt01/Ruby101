answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

# What is the output of the following code? 34, the original variable answer is not mutated
# by the method mess_with_it. So even though it is passed into the method, you have to
# puts, or p, the variable new_answer to get the 42 + 8 to work.