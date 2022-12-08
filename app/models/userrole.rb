class Userrole < ApplicationRecord
	validates :namerole, presence: true, uniqueness: true
	has_many :users
end
