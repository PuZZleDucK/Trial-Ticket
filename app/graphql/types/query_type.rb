Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # top level product entry... needs to point to already defined product types
  field :products, types[Types::StoreProductType] do
    description "Basic Product Field"
    resolve ->(obj, args, ctx) {
      StoreProduct.all()
    }
  end

end
