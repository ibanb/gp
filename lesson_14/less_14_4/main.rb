require_relative "lib/film"
require_relative "lib/collec"

new_test = Collec.new
new_test.create_array_paths

count = 0
score = 0 

while (count < 5)
 rigth_guess = new_test.actor
 rigth_actor = rigth_guess[count]
 puts "Hello man, this test can show how you know the artists?"
 puts "Who is the main hero in - #{new_test.names[count]}"
 puts
 rigth_guess.each_with_index do |item, index|
  puts "#{index+1} - #{item}"
 end
 user_input = STDIN.gets
  if (user_input == rigth_actor)
   puts "You right!"
   score += 1
  else 
   puts "Wrong. The right answer - #{rigth_actor}"
  end

 
 count += 1
end
puts
puts "Your right answer - #{score}/5"

