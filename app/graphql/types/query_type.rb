Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # top level product entry... needs to point to defined product type
  field :products, types.String do
    description "Basic Product Field"
    resolve ->(obj, args, ctx) {
      "product!"
    }
  end

  # TODO: remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello World!"
    }
  end
end
