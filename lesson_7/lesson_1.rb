
puts "Input N"

array = []
number = gets.chomp
count = 0

while count < number.to_i do
    count += 1
    array << count
end

sum = 0

for item in array do
    sum += item
end

puts array.to_s
puts sum