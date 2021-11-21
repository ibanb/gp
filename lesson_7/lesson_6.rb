
# Загадано число от 0 до 15, отгадайте какое?
# > 8
# Тепло (нужно больше)
# > 10
# Тепло (нужно меньше)
# > 9
# Ура, вы выиграли!

magic_number = rand(15)
user_chance = 0

puts "Загадано число от 0 до 15, отгадайте какое?"

while user_chance <= 3 do 

    user_chance += 1
    guess_user = gets.to_i
    if guess_user == magic_number
        abort "Вы угадали!"
    elsif (user_chance == 3 && guess_user != magic_number)
        puts "your chance is lost - Magic number is:"
        puts magic_number
    elsif (magic_number - guess_user).abs <= 2 && magic_number - guess_user > 0 
        puts "Тепло (нужно больше)"
    elsif (magic_number - guess_user).abs <= 2 && magic_number - guess_user < 0
        puts "Тепло (нужно меньше)"
    elsif (magic_number - guess_user).abs > 2 && magic_number - guess_user > 0 
        puts "нужно больше"
    elsif (magic_number - guess_user).abs > 2 && magic_number - guess_user < 0
        puts "нужно меньше"
    end
end
