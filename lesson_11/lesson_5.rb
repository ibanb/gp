
def sklonyator
    puts "Сколько вам енотов?"
    number = STDIN.gets.chomp.to_i

    if (number%20 >= 10 && number%20 <= 20)
        puts "У вас #{number} енотов"
    elsif (number%10 == 0)
        puts "У вас #{number} енотов"
    elsif (number%10 == 1)
        puts "У вас #{number} енот"
    elsif (number > 20 && number%10 > 1 && number%10 < 5)
        puts "У вас #{number} енота"
    else
        puts "У вас #{number} енотов"
    end
end

sklonyator
