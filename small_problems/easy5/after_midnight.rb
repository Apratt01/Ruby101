=begin

take a number
is it positive or negative?

DAYS = 1440
TIME = 60

def time_of_day(num)
  if num >= 0
    days = num / DAYS
    hours = (num - days * DAYS)/ TIME
    minutes = num % TIME
  else
    days = -num / DAYS
    hours = 23 - (-num - days * DAYS)/ TIME
    minutes = TIME - (-num % TIME)
  end
  
  hours < 10 ? hours = "0" + hours.to_s : hours = hours.to_s
  minutes < 10 ? minutes = "0" + minutes.to_s : minutes = minutes.to_s
  time = hours + ":" + minutes
  time
end 

=end

def time_of_day(n)
  format("%02d:%02d", (n / 60) % 24, n % 60)
end

puts time_of_day(0) == "00:00" #- good
puts time_of_day(-3) == "23:57" # - good
puts time_of_day(35) == "00:35" #- good
puts time_of_day(-1437) == "00:03" # - good
puts time_of_day(3000) == "02:00" #- good
puts time_of_day(800) == "13:20" # - good
puts time_of_day(-4231) == "01:29"