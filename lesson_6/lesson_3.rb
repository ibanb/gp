
cars = ["audi", "bmv", "opel", "mersedes", "ferrari", "toyota", "jiguli"]

puts "We have the #{cars.length} cars. What car do you want?"

choice = gets.chomp.to_i

if (choice == 0 || choice < 0 || choice >cars.length)
    abort "your choise is bad!"
else
    puts "congretule, you got #{cars[choice]}"
end
