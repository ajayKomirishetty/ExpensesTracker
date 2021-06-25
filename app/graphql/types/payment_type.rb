module Types
  class PaymentType < Types::BaseObject
    field :PaidBy, Integer, null: true
    field :Payee, Integer, null: true
    field :amount, Integer, null: true
    field :comments, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
