
files = Dir.glob("*")

puts "file catalog:"
count = 1
for file in files
    puts "#{count}: #{file} "
    count += 1
end

puts "file open number:"

choice_user = STDIN.gets.to_i

file = File.new(files[choice_user - 1], "r:UTF-8")
puts file.read