# frozen_string_literal: true

class GraphqlRailsApiSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
end
