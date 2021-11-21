


array = [1, 2, 3, 4, 5, 6, 7]
reverse_array = []
count = array.length

for item in array do
    reverse_array << array[count - 1]
    count -= 1
end

puts reverse_array.to_s

