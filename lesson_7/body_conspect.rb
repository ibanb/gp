
users = []

users_name = nil

while users_name != "" do
    users_name = gets.chomp
    users << users_name
end

for names in users do
    if names == "alice"
        puts "Alice, who is that girl?"
        sleep 0.5
        break
    end
end

puts "Что это за девочка и где она живет?"
sleep 1
puts "А вдруг она не курит? А вдруг она не пьёт?"
sleep 1
puts "А мы с такими рожами возьмем да и припрёмся к Элис... :)"