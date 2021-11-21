#implement read_from_dir

PRODUCT_TYPES = {
    film: { dir: "films"},
    book: { dir: "books"}
}
products = []

PRODUCT_TYPES.each do |type, hash|
  product_dir = hash[:dir]
  
Dir[__dir__ + "/data/#{product_dir}/*"].each do |path|
  products << path
end
end

puts products
