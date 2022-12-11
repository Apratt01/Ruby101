DAY = 1440
TIME = 60

def after_midnight(num)
  hours, minutes = num.split(':').map { |string| string.to_i }
  total = (hours * TIME + minutes) % DAY
  total
end 

def before_midnight(num)
  total = (DAY - after_midnight(num)) % DAY
  total
end 


puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0