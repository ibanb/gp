
class Hameleon
    def initialize(color)
        @color = color
    end

    def color=(color)
        @color = color
    end

    def show_color
        return @color
    end

end

hameleon = Hameleon.new("blue")
puts hameleon.show_color

hameleon.color=("red")
puts hameleon.show_color