
class Disk < Product
    attr_accessor :title, :director, :year, :jenre

    def self.from_file(file_path)
        lines = File.readlines(file_path, encoding: 'UTF-8').map { |l| l.chomp }

        self.new(
            title: lines[0],
            director: lines[1],
            jenre: lines[2],
            year: lines[3],
            price: lines[4],
            amount: lines[5]
        )
    end

    def initialize(params)
        super
        @title = params[:title]
        @director = params[:director]
        @jenre = params[:jenre]
        @year = params[:year]
    end

    def to_s
        "Диск «#{@title}», #{@year}, реж. #{@director}, жанр #{@jenre}, #{super}"
    end

    def update(params)
        super
        @title = params[:title] if params[:title]
        @director = params[:director] if params[:director]
        @jenre = params[:jenre] if params[:jenre]
        @year = params[:year] if params[:year]
    end
end


