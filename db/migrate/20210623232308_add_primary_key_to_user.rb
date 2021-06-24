class AddPrimaryKeyToUser < ActiveRecord::Migration[6.1]
  def change
    change_table :users,:primary_key => :id do |t|
    end
  end
end
