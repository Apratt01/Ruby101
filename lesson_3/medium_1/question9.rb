def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

bar(foo)

# What would be the return value of the following method invocation?
# no
# the value returned from the foo method will always be "yes" , and "yes" == "no" will be false.