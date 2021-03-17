class AccountSerializer < ActiveModel::Serializer
  attributes :id, :name, :balence

  has_many :transactions
end
