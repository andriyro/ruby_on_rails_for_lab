class Shop < ApplicationRecord
	validates :Name_shop, presence: true
	validates :Address, presence: true
end
