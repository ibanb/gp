

class MyClass
  def initialize
    @string2 = 'Я вторая строка'
  end

  def print_string1
    string1 = 'Я первая строка'
    puts string1
  end
end

my_class = MyClass.new
my_class.print_string1

puts @string2