class Instrument < ApplicationRecord
  CONDITION = ['New', 'Used', 'Refurbished']
  has_one_attached :image
end
