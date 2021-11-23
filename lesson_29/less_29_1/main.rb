require 'rexml/document'
require 'date'

puts "Type your wish:"
wish_text = STDIN.gets.chomp

puts "Type deadline: yyyy-mm-dd"
deadline = STDIN.gets.chomp

deadline = Date.today if deadline == ''

current_path = File.dirname(__FILE__)
file_name = current_path + "/box.xml"
file = File.new(file_name, "r:UTF-8")

doc = REXML::Document.new(file)
file.close

wishies = doc.elements.find('wishies').first
wish = wishies.add_element('wish', {
 'deadline' => Date.parse(deadline).to_s
})

wish.text = wish_text

file = File.new(file_name, "w:UTF-8")
doc.write(file, 2)
file.close

puts "Your wishes has writed"

file = File.new(file_name, "r:UTF-8")
doc_show = REXML::Document.new(file)
future_wish = []
last_wish = []
doc_show.elements.each('wishies/wish') do |item|
  wish_date = item.attributes['deadline']
  today = Date.today
  today = today.strftime("%Y-%m-%d") 
  wish_to_s = "#{wish_date} : #{item.text}"
  future_wish << wish_to_s if wish_date > today
  last_wish << wish_to_s if wish_date < today
end

puts "Your future wishes:"
puts future_wish
puts 
puts "Your last wishes:"
puts last_wish

    
  






























