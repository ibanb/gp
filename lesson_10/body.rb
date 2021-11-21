
current_path = File.dirname(__FILE__)
file_path = current_path + "/data/quotes.txt"

if File.exist?(file_path)
    file = File.new(file_path, "r:UTF-8")
    lines = file.readlines.sample
    file.close
else
    puts "file does not exist"
    sleep 1
    exit 
end

puts lines



