class User < ApplicationRecord
    has_many :expenses 
   
    def balances
        Payment.where(:paidBy => self.id).pluck(:amount).sum
    end
    
    def balances_json
      Payment.where(:paidBy => self.id).to_json
    end
end
