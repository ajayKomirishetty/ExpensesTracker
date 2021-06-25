module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :users, [Types::UserType], null: false  # Get list of all users
    field :payments, [Types::PaymentType], null: false  # Get list of all payments


    
    def users
      User.all
    end

    def payments
      Payment.all
    end
  end
end
