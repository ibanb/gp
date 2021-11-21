# Today is restday?))
holyday = ["12-12"]

time = Time.new

day = 6
now =  time.strftime("%m-%d")

puts (holyday.include?(now) || day%7 == 0 || day%7 == 6 ) ? "Today is holyday" : "...we need work"

