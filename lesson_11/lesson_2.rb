
def fio_to_init
    puts "Введите фамилию:"
    last_name = STDIN.gets.chomp
    puts "Введите имя:"
    first_name =  STDIN.gets.chomp
    puts "Введите отчество:"
    super_name = STDIN.gets.chomp

    puts "Ваше ФИО сокращенно: #{last_name} #{first_name[0].upcase}.#{super_name[0].upcase}."
end

fio_to_init