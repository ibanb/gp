require_relative 'cloth'
    

class Collection 
    attr_reader :collection, :types

    def initialize(collection)
        @collection = collection
        @types
    end

    def self.create_collection
    paths = Dir[__dir__ + '/../data/*']
    collection = []    
        for path in paths
            file = File.new(path, "r:UTF-8")
            lines = file.readlines
            file.close
            cloth = Cloth.new(lines[1], lines[0], lines[2])
            collection << cloth
        end

        return Collection.new(collection)
    end

    def to_types
        types = []
        for coll in @collection
            types << coll.type if !types.include?(coll.type)
        end
        @types = types
    end

    def generate_set(type, input)
        box_type = []
             for obj in @collection
                 if obj.type == type && input == obj.range.to_i
                    box_type << obj.name
                 end
             end
        return box_type




                    
        #get key of array  keys and call array objects cloths
        #check range(3 string) and create put match into new array and get randow of it for final array
        #puts final
    end
end
