Types::StoreProductType = GraphQL::ObjectType.define do
  name "Product"
  field :id, !types.ID
  field :title, !types.String
  field :price, !types.Int
  field :expiring, !types.String
end
