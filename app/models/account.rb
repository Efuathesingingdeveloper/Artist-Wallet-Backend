class Account < ApplicationRecord
    has_many :transactions
    validates :name, :balance, presence: true

    def update_balance(transaction)
        if transaction.kind == 'deposit'
            self.balance = self.balance + transaction.amount
            self.save
        elsif transaction.kind == 'withdraw'
            if  self.balance >= transaction.amount
                self.balance = self.balance - transaction.amount
                self.save
            else
            return 'Balance too low , Time to fillup your artist wallet'
            end
        end  
    end

    def update_balance_on_delete(transaction)
        if transaction.kind == 'deposit'
            if self.balance >= transaction.amount
            self.balance = self.balance - transaction.amount
            self.save
            else 
                return 'Balance too low'
            elseif transaction.kind == 'withdraw'
                self.balance = self.balance + transaction.amount
                self.save
           
            end
        end 
    end
   end 
