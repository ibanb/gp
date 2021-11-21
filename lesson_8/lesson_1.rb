
original_word = gets.downcase.strip.delete(" -?")
reverse_word = original_word.reverse

if original_word == reverse_word
    puts "This is a polindrom"
else
    puts "Its not a polindrom"
end

puts original_word
puts reverse_word