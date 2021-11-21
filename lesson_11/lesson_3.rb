
puts "inter your word:"

user_word = STDIN.gets.chomp

def mix_word(word)
    array = word.split("")
    puts "#{array[4]}#{array[1]}#{array[3]}#{array[0]}#{array[2]}"    
end

mix_word(user_word)