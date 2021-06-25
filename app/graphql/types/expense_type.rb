module Types
  class ExpenseType < Types::BaseObject
    field :id, ID, null: false
    field :expenseDate, GraphQL::Types::ISO8601DateTime, null: true
    field :Description, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :category_id, Integer, null: true
    field :user_id, Integer, null: true
    field :splitWith, String, null: true
  end
end
