class Account < ApplicationRecord
    has_many :transactions
    validates :name, :balence, presence: true

    def update_balence(transaction)
        if transaction.kind == 'deposit'
            self.balence = self.balence + transaction.amount
            self.save
        elsif transaction.kind == 'withdraw'
            if  self.balence >= transaction.amount
                self.balence = self.balence - transaction.amount
                self.save
            else
            return 'Balence too low , Time to fillup your artist wallet'
            end
        end  
    end
end
