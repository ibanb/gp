require_relative 'lib/collection'
require_relative 'lib/cloth'

collection = Collection.create_collection

collection.to_types
result = []
collection.types.each do |type|
    set = collection.generate_set(type, 14)
    result << set.sample
end

puts result





