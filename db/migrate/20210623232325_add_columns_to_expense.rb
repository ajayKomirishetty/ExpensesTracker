class AddColumnsToExpense < ActiveRecord::Migration[6.1]
  def self.up
    change_table :expenses do |t|
      t.integer :category_id
      t.integer :user_id
    end
  end
end
