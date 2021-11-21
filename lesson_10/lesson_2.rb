
hears = File.new("./faces/hears.txt", "r:UTF-8").readlines.sample
eyes = File.new("./faces/eyes.txt", "r:UTF-8").readlines.sample
nouse = File.new("./faces/nouse.txt", "r:UTF-8").readlines.sample
month = File.new("./faces/month.txt", "r:UTF-8").readlines.sample

puts hears
puts eyes
puts nouse
puts month
