class CardSerializer < ActiveModel::Serializer
  attributes :id, :value, :suit, :code
  belongs_to :deck
end
