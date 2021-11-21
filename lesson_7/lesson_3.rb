
puts "1. Get down!"
puts "2. slowly sleep"
puts "3. run away"

user_choice = 0

while user_choice < 1 || user_choice > 3 do
    puts "input please you choice:"
    user_choice = gets.to_i
end

puts "you won!"
puts user_choice
