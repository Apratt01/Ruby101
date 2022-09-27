require 'date'

puts Date.civil                             # everything defaults -4712-01-01
puts Date.civil(2016)                       # month, mday, start use defaults
puts Date.civil(2016, 5)                    # mday, start use defaults
puts Date.civil(2016, 5, 13)                # start uses default
