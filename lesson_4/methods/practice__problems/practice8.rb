# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# docs says it returns array based on number given
# arr.take(2) => [1, 2]

# IRB shows it is not destructive
# after calling the method, arr still = [1, 2, 3, 4, 5]