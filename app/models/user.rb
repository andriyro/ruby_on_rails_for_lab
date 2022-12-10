class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  

	validates :First_name, presence: false
	validates :Last_name, presence: false
	validates :Phone, presence: false
	validates :userrole_id, presence: false
	validates :email, uniqueness: true
	has_many :carts
	belongs_to :userrole
end





