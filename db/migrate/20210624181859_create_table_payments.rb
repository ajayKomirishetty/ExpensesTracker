class CreateTablePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments, :primary_key => %i[PaidBy Payee] do |t|
      t.integer :PaidBy
      t.integer :Payee
      t.integer :amount
      t.text :comments, default: "pay the remaining amount to your friend"

      t.timestamps
    end
    # execute "ALTER TABLE payments ADD PRIMARY KEY (PaidBy,Payee);"
  end
end
