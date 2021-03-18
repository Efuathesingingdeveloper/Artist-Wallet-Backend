class Account < ApplicationRecord
    has_many :transactions
    validates :name, :balance, presence: true

    def update_balence(transaction)
        if transaction.kind == 'deposit'
            self.balance = self.balence + transaction.amount
            self.save
        elsif transaction.kind == 'withdraw'
            if  self.balance >= transaction.amount
                self.balance = self.balance - transaction.amount
                self.save
            else
            return 'Balence too low , Time to fillup your artist wallet'
            end
        end  
    end
end
