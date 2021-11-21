
puts "Мини-викторина. Ответьте на вопросы."

file_1 = File.new("./data/file_1.txt","r:UTF-8")
file_1_lines = file_1.readlines

puts file_1_lines[0]
puts
puts "Please inter your answer:"
user_answer = STDIN.gets.chomp.to_i


if user_answer == file_1_lines[1].to_i
    puts "rigth!!"
else
    puts "wrong!"
end
