
token_generate_array = ["1", "2", "d", "t", "-", "7", "j", "g", "P"]

token = []
count = 0

while count < 8 do

    token << token_generate_array.sample
    count += 1
end

puts token.join('')