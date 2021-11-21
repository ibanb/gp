# 
# Мама мыла раму

# амам ымла мура

def mix_word_sentence
    puts "Введите фразу:"
    user_sentence = STDIN.gets.chomp.split(" ")
    puts user_sentence
    puts "#{user_sentence[1][1]}#{user_sentence[1][3]}#{user_sentence[1][0]}#{user_sentence[1][2]}"
    puts "#{user_sentence[0][1]}#{user_sentence[0][3]}#{user_sentence[0][0]}#{user_sentence[0][2]}"
    puts "#{user_sentence[2][1]}#{user_sentence[2][3]}#{user_sentence[2][0]}#{user_sentence[2][2]}"
    puts user_sentence.join
end

mix_word_sentence