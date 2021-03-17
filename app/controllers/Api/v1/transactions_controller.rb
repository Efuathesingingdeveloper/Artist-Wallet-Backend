class Api::V1::TransactionsController < ApplicationController
 
    before_action :set_account
    def index
        @transactions =  Transaction.all
    render json: @transactions
    end 
       def show
         @transaction = Transaction.find(params[:id])
         render json: @transaction
       end 
       
       def create
        @transaction = @account.transactions.new(transaction_params)
        if @account.update_balence(@transaction) !=  'Balence too low , Time to fillup your artist wallet'
            @transaction.save
            render json: @transaction

        else
            render json: {error: 'Balence too low , Time to fillup your artist wallet'}
        end 

        end
       end 
   
     
   
       private

       def set_account
        @account = Account.find(params[:account_id])
       end 
   
       def transaction_params
         params.require(:transaction).permit(:amount, :balence, :account_id, :kind, :date, :description)
       end
   
end
