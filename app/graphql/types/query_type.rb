Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  # top level product entry... needs to point to already defined product types
  field :products, types[Types::ProductType] do
    description "Basic Product Field"
    resolve ->(obj, args, ctx) {
      Product.all()
    }
  end

  field :store_products, types[Types::StoreProductType] do
    description "Store Product Field"
    resolve ->(obj, args, ctx) {
      StoreProduct.all()
    }
  end

end
