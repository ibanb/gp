
user_number = ARGV[0]

if user_number.to_i == 0 || user_number == ""
  user_number = 10;
end

user_number.to_i.times do 
 time = Time.new
 sleep 1
 puts time
end

 
