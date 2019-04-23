class DeckSerializer < ActiveModel::Serializer
  attributes :id
  has_many :cards
end
