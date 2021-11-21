class Test
    attr_reader :authors, :name, :year

    def initialize
    @authors = [1,2,3]
    @name = ['sdfsdfd']
    @year = ['sdfd dsfsdf']
    end
end

newTest = Test.new
puts newTest.authors

