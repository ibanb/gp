
# $ ruby nightingales.rb 10 0
# Сейчас соловьи молчат, греются или прохлаждаются :)

# $ ruby nightingales.rb
# Какая сейчас температура?
# > 15
# Какое время года? (0 - весна, 1 - лето, 2 - осень, 3 - зима)
# > 1
# Скорее идите в парк, соловьи поют!

version = "\nСоловьи 1.0"

temperature = ARGV[0]

if temperature == nil
    puts "Please input temperature:"
    temperature = STDIN.gets.to_i
else
    temperature = temperature.to_i
end

year_time = ARGV[1]

if year_time == nil
    puts "Please input year_time:"
    year_time = STDIN.gets.to_i
else
    year_time = year_time.to_i
end

if temperature > 22 and temperature < 30 and year_time != 1
    puts "Скорее идите в парк, соловьи поют!"
elsif temperature > 15 and year_time == 1 and temperature < 35
    puts "Скорее идите в парк, соловьи поют!"
else
    puts "Сейчас соловьи молчат, греются или прохлаждаются :)"
end
