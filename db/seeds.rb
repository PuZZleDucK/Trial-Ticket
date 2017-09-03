
Product.destroy_all
Product.create([
  { title: "Firly Firstington Furlingator", price: 111},
  { title: "Sammys Special Second", price: 122},
  { title: "Trio of Tame Trout", price: 133},
  { title: "Four Foreman Furlingating", price: 144},
  ])

StoreProduct.create([
    { title: "2016 - Overly Obleque Over One", price: 111, expiring: Time.new(2016, 01, 01, 12, 0, 0)},
    { title: "2017 - Tremendously Troublesome Timely Two", price: 122, expiring: Time.new(2017, 12, 31, 12, 0, 0)}
    ])
