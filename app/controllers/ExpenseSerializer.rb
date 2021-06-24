class ExpenseSerializer < ApplicationSerializer
    attributes :id, 
    has_one :category
    has_one :user
  end
  