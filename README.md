
# Trial Ticket
Implimenting a GraphQL api in Rails

To setup run the following:
```bash
git clone https://github.com/PuZZleDucK/Trial-Ticket.git
cd Trial-Ticket/
bundle install
rails db:migrate
rails db:seed
```

Then run the tests and start the server with:
```bash
bundle exec rspec
rails server
```

Now open the endpoint ```http://localhost:3000/graphql``` in a browser or ChromeiQL to query the API

# Plan
- [x] Init repo
- [x] Document task
  - [x] Setup project
  - [x] Setup Rspec
  - [x] Setup graphql
  - [x] Object models
  - [x] Seed values
  - [x] Code
  - [x] Review tests
- [x] Subclass expiring Store products

# Entities
- Product (title price)
- Store Product (expiry_date)

# Issues/Probl
- Where do the params from chromeiQL go?
- Different responses from chromeiQL and chrome
- Rspec is new for me
- GraphQL "interface" is new
- Removed spring due to bug with bundler: https://github.com/bundler/bundler/issues/4165

# Brief
From a blank repo implement a Rails graphQL API with a single model "Product" that has a "title" and "price" attribuite.

Should be able to queary with ChromeiQL with endpoint "http://localhost:3000/graphql" and beloow query to get all product data:
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
