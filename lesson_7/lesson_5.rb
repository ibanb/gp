
array_to_buy = ["масло", "молоко", "хлопья", "картошка", "курица", "помидоры"]

while array_to_buy.length != 0 do
    puts "Нужно купить:"
    puts array_to_buy.to_s
    puts "Что купили:"
    
    item_user = gets.chomp
    
    array_to_buy.delete(item_user)
    
    puts "Нужно еще купить:"
    puts array_to_buy.to_s
end

puts "all good"

