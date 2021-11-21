
100.times do |index|
  puts "tyry" if index%3 == 0
  puts "pyry" if index%5 == 0
  if index%3 == 0 && index%5 == 0
    puts "tyry-pyry"
  end 
end


