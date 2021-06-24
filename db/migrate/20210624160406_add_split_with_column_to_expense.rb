class AddSplitWithColumnToExpense < ActiveRecord::Migration[6.1]
  def change
    add_column :expenses, :splitWith, :text
  end
end
