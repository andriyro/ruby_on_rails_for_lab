class Post < ApplicationRecord
	has_many :chats, dependent: :destroy
	validates :body, presence: true, length: { minimum: 5}
end
