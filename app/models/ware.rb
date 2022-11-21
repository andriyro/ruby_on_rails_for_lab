class Ware < ApplicationRecord
	validates :name_product, presence: true
	validates :price, numericality: {only_float: true}
end
