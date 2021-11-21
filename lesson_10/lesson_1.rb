
file_needed = ARGV[0]

if File.exist?(file_needed)
    file = File.new(file_needed, "r:UTF-8")
    lines = file.readlines
    file.close
else
    puts "file does`t exist"
    sleep 1
    exit
end

empty_lines = 0

for line in lines
    if line == "\n"
        empty_lines += 1
    end
end
puts "Total lines: #{lines.length}"
puts "Empty lines: #{empty_lines}"

count = 5
puts
puts "Last five lines in file:"

while count >= 0 
    puts lines[lines.length - count]
    count -= 1
end



