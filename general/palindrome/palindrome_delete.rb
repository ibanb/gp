puts 'Введите строку, которую надо проверить на «палиндромность»:'

user_input = STDIN.gets.chomp

prepared_string = user_input.downcase.delete("^a-zа-яё")

if prepared_string == prepared_string.reverse
  puts "Да, это палиндром!"
else
  puts "Нет, это не палиндром!"
end
