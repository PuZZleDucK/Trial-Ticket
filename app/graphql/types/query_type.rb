Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :products, types[Types::ProductType] do
    description "Basic Product Field"
    resolve ->(obj, args, ctx) {
      Product.all().where(expiring: nil)
    }
  end

  field :store_products, types[Types::StoreProductType] do
    description "Store Product Field"
    resolve ->(obj, args, ctx) {
      StoreProduct.all()
    }
  end

end
