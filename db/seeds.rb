
Product.destroy_all
Product.create([
  { title: "item one", price: 111},
  { title: "item 2", price: 122},
  { title: "item 3", price: 133},
  { title: "item fore", price: 144},
  ])

StoreProduct.destroy_all
StoreProduct.create([
    { title: "store one", price: 111},
    { title: "store 2", price: 122}
    ])
