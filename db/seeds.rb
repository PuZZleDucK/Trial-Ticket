# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

products = Product.create([
  { title: "item one", price: 111},
  { title: "item 2", price: 122},
  { title: "item 3", price: 133},
  { title: "item fore", price: 144},
  ])

store_products = StoreProduct.create([
    { title: "store one", price: 111},
    { title: "store 2", price: 122}
    ])
