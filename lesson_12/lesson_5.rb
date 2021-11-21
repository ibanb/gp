require 'open-uri'
require 'json'

def random_cat_fact
  data = URI.open("https://cat-fact.herokuapp.com/facts/random").read
  json = JSON.parse(data)

  return json["text"]
end


puts "How many facts about cats did you want?"
user_choice = gets.to_i
count = 0;

while (count <= user_choice)
    puts random_cat_fact
    count += 1
end



