puts 'Введите строку, которую надо проверить на «палиндромность»:'

user_input = STDIN.gets.chomp

# prepared_string = user_input.downcase.gsub(/[^a-zа-яё]/, "")
prepared_string = user_input.downcase.gsub(/[\s[:punct:]]/, "")

if prepared_string == prepared_string.reverse
  puts "Да, это палиндром!"
else
  puts "Нет, это не палиндром!"
end
