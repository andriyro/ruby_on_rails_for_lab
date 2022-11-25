class User < ApplicationRecord
	validates :First_name, presence: true
	validates :Last_name, presence: true
	validates :Phone, presence: true
	has_many :carts
	belongs_to :userrole
end





