
class Collec
 attr_reader :names, :actor, :year
 def initialize
  @names = []
  @actor = []
  @year = []
 end

 def get_names
  return @names
 end

 def create_array_paths
  paths = Dir["#{__dir__}/../data/*.txt"]

   for item in paths
    file = File.new(item, "r:UTF-8")
    lines = file.readlines
    file.close
    @names << lines[0]
    @actor << lines[1]
    @year << lines[2]
   end
 end
end
