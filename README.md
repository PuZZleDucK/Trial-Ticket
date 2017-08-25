
# Trial Ticket
Implimenting a GraphQL api in Rails

# Plan
- [x] Init repo
- [x] Document task
  - [x] Setup project
  - [x] Setup Rspec
  - [x] Setup graphql
  - [x] Object models
  - [x] Seed values
  - [ ] Code
  - [ ] Review tests
- [x] Subclass expiring Store products

# Entities
- Product (title price)
- Store Product (expiry_date)

# Issues/Probl
- Where do the params from chromeiQL go?
- Different responses from chromeiQL and chrome
- Rspec
- GraphQL "interface"
- Rails commands fail... no more mac :D
- Removed spring due to bug with bundler: https://github.com/bundler/bundler/issues/4165

# Brief
From a blank repo implement a Rails graphQL API with a single model "Product" that has a "title" and "price" attribuite.

Should be able to queary with Chrome-i-QL with endpoint "http://localhost:3000/graphql" and beloow query to get all product data:
query products {
  products {
    title
    price
  }
}

# Pointers
- No UI
- Bonus: Rspec tests on model or endpoint
- Bonus: Base Product and subclass "store_product" with timestamp attribute "expiry_date"
- Documentation for Ruby library
- Push code
