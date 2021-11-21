class Film
 attr_reader :name, :year, :author 

 def initialize(name, year, author)
  @name = name
  @year = year
  @author = author
 end

 def full_info
  return "Name - #{@name}\nYear - #{@year}\nAuthor - #{@author}"
 end
end



 
