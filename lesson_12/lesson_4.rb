# Введите ваш вес (в кг.):
# 70

# Введите ваш рост (в м.):
# 198

puts "Введите ваш вес (в кг.):"
weight = gets.to_i
puts "Введите ваш рост (в м.):"
hight = gets.to_f

def bmi(weight, hight)
    return weight/hight**2
end

def state_index(bmi)
    case bmi
    when (0..16)
        puts "deficit"
    when (25..30)
        puts "keep danger"
    when (30..35)
        puts "I station of weight"
    when (35..40)
        puts "II station....oooouu((("
    when (40..100)
        puts "so very bad man..."
    end
end

puts state_index(bmi(weight, hight))