Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # TODO: remove me
  field :testField, types.String do
    description "An example field added by the generator"
    resolve ->(obj, args, ctx) {
      "Hello world!"
    }
  end

  field :blog, !Types::BlogType do
    resolve ->(_obj, _args, ctx) {
      ctx[:blog]
    }
  end

end