class Ware < ApplicationRecord
	validates :name_product, presence: true
end
