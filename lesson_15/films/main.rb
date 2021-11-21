require_relative 'lib/film'

film1 = Film.new
film1.setState
film1.toList

puts 'Программа «Фильм на вечер»'
puts "Фильм какого режиссера вы хотите сегодня посмотреть?\n"
puts
film1.get_authors.each_with_index do |item, i|
    puts "#{i+1}: #{item}"
end

puts
puts "Введите номер: "
user_input = STDIN.gets.chomp

puts film1.showFilms(user_input)
