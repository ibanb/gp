# $ ruby email.rb 
# Введите email:
# install.vv@gmail.com
# Спасибо!

# $ ruby email.rb 
# Введите email:
# Какая-то фигня!
# Это не email

email = ARGV[0]

if ("google@gmail.com" =~ /^/)
    puts "valid email"
else
    "getout there..."
end
