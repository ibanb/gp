
puts "Бивалютный портфель 1.3. с Использовнием метода\n"
puts "Укажите сколько у вас долларов?"
dol = gets.to_i
puts "Укажите сколько у вас рублей?"
rub = gets.to_i
puts "Укажите курс доллара?"
dol_course = gets.to_i


def calc(rub, dol, dol_course)
# на входе — рубли, доллары, курс;
# на выходе — количество долларов, которое нужно купить
convert_dol_in_rub = (dol * dol_course).round
    
    if (convert_dol_in_rub > rub)
        puts "test1"
        return ((convert_dol_in_rub - rub)/2)/dol_course.round(2)
    elsif (convert_dol_in_rub < rub)
        return ((convert_dol_in_rub - rub)/2)/dol_course.round(2)
    end

    return 0
end

result = calc(rub, dol, dol_course)

if  result > 0 
    puts "You need send #{result} dollars."
elsif result < 0
    puts "You need buy #{result.abs} dollars"
else
    puts "Your case is balance!"
end





