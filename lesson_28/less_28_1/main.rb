require "rexml/document"
require "date"


abort "Sorry your file does not exist" unless File.exist?(__dir__ + "/cards/cards.xml")

file = File.new(__dir__ + "/cards/cards.xml")

doc = REXML::Document.new(file)
full_name = ''


doc.elements.each("card") do |item|
    name = item.attributes["name"]
    last_name = item.attributes["last_name"]
    data_time = Date.parse(item.attributes["data_time"])
    full_name += name + " " + last_name + " " + data_time.strftime("%Y-%m-%d")
end

puts full_name


