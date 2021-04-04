class TransactionSerializer < ActiveModel::Serializer
  attributes :id, :amount, :kind, :date, :description, :category, :account_id
end
