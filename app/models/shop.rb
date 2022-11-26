class Shop < ApplicationRecord
	validates :Name_shop, presence: true
	validates :Address, presence: true
	has_many :carts
	belongs_to :shop
end
