class Film 

    def initialize
        @authors = []
        @name = []
        @year = []
    end

    def setState
        paths = Dir[__dir__ + "/../data/*"]
        paths.each do |item|
        file = File.new(item).readlines
        @authors << file[0]
        @name << file[1]
        @year << file[2]
        end
    end

    def toList
        @authors = @authors.uniq
    end
    def get_authors
        @authors
    end
    def showFilms(user_input)
        films_sort_list = []
        paths = Dir[__dir__ + "/../data/*"]
        paths.each do |item|
        file = File.new(item).readlines
            if (file[0].chomp === user_input)
                films_sort_list << file[1]
            end

        end
        return films_sort_list.sample

    end    
end
