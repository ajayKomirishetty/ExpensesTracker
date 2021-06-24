class Expense < ApplicationRecord
    has_one :user, class_name: "User", foreign_key: "id"
    has_one :category, class_name: "Category", foreign_key: "id"
    serialize :splitWith, Hash
end
