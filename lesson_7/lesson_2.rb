

puts "Какой длины будет массив случайных чисел?"

length = gets.chomp
count = 0
array = []

while count < length.to_i do
    random_number = rand(100)
    array << random_number
    count += 1
end

max_number = 0

for number in array do
    if number > max_number
        max_number = number
    end
end


puts array.to_s
puts "Самое большое число:"
puts max_number


