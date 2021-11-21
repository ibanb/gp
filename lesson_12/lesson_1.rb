
# Введите слово:
# длинношеее

# Гласных: 5

puts "Введите слово:"
word = gets.chomp
vowels = %[a e y u i o]

def count_vowel(word, vowels)
    
    word = word.split("")
    count = 0;
    for vowel in word
        if vowels.include?(vowel)
            count += 1
        end
    end

    return count
end

puts "Number vowels:#{count_vowel(word, vowels)}"
puts "Number consonant:#{word.length - count_vowel(word, vowels).to_i}"