
def calc_radius
    puts "Input circle radius:"
    radius = STDIN.gets.chomp.to_i
    puts 3.14*radius*radius
end

calc_radius
calc_radius