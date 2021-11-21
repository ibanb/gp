
puts "Укажите курс доллара :"
val_dol = gets.to_f

puts "Сколько у вас рублей?"
sumR = gets.to_f

puts "Сколько у вас долларов?"
sum_dol = gets.to_f

#Сконвертируем имеющиеся доллары в рубли
convert_sum_dol = (val_dol * sum_dol).round(2)

#Проверяем сбалансированность валютного портфеля
if (convert_sum_dol == sumR)
	puts "Бивалютный портфель сбалансирован!"
elsif (convert_sum_dol - sumR).abs <= 0.1
	abort "Бивалютный портфель сбалансирован!"
end



#В зависимости от дисбаланса, предложим сбалансировать
if (convert_sum_dol > sumR)
	puts "Вам нужно продать - #{(((convert_sum_dol - sumR)/2)/val_dol).round(2)} долларов" 
end	

if (convert_sum_dol < sumR)
	puts "Вам нужно купить - #{(((sumR - convert_sum_dol)/2)/val_dol).round(2)} долларов" 
end

