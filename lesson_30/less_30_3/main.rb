require_relative 'lib/collection'
require_relative 'lib/cloth'

collection = Collection.create_collection

puts collection.collection
collection.to_types
puts collection.types


