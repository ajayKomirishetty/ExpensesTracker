class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.datetime :expenseDate
      t.string :Description

      t.timestamps
    end
  end
end
