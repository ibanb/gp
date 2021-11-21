require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/film'
require_relative 'lib/disk'
require_relative 'lib/product_collection'

collection = ProductCollection.from_dir(File.dirname(__FILE__) + '/data')

puts "What do you want to buy?"
list_products = collection.to_a

user_input = -1
sum = 0;
buy_list = []

while (user_input != 10) 
  
  
  list_products.each_with_index do |product, index|
    puts "#{index}. #{product}"
  end
  user_input = STDIN.gets.chomp.to_i
  if user_input == 10
    break
  end

  diff = list_products[user_input].amount.to_i - 1
  list_products[user_input].update(:amount => diff)
  sum += list_products[user_input].price.to_i
  puts "Вы выбрали: #{list_products[user_input]}"
  puts "Всего товаров на сумму: #{sum} руб."
  buy_list << list_products[user_input]

end

def basket(buy_list)
  buy_list.each_with_index do |buy, index|
    puts "#{index+1}. #{buy}"
  end
end

puts
puts "You basket:"
basket(buy_list)