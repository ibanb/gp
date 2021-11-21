
class Face
    def initialize
        @uniq_face
        @present_time
        @time = ""
    end

    def create_arrays_face
        current_path = File.dirname(__FILE__)
        paths = Dir[current_path + "/../data/*"]
        hairs = []
        eyes = []
        month = []
        tail = []
        uniq_face = []
        for item in paths
            file = File.new(item).readlines
            hairs << file[0]
            eyes << file[1]
            month << file[2]
            tail << file[3]
        end

        @uniq_face = uniq_face
        
    end

    def get_present_time
        date = Time.new
        present_time = date.strftime("%Y-%m-%d-%H-%M")
        @present_time = present_time
    end

    def print_face_on_file
        new_file = File.new("#{__dir__}/../results/#{@present_time}.txt", "a:UTF-8")
        new_file.puts(@uniq_face)
    end
end
