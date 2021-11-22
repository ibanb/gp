require "rexml/document" # подключаем парсер
require "date"

file_path = File.dirname(__FILE__)
file_name = file_path + "/quiz.xml"
abort "sorry file is not exist" unless File.exist?(file_name)

file = File.new(file_name)

doc = REXML::Document.new(file)

doc.elements.each("questions/question") do |item|
    test_attr = item.attributes["minutes"]
    puts test_attr
end



