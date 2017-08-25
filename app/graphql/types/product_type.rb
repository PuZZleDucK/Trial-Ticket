Types::ProductType = GraphQL::ObjectType.define do
  name "product"
  field :id, !types.ID
  field :title, !types.String
  field :price, !types.Int
end
