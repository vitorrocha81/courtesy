class User < ActiveRecord::Base
	has_many :friends
	validates :name, :phone, :company, :position, presence: true
	validates :email, uniqueness: true #somente o email do usuário~precisa ser único.
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
	validates :phone, numericality: true
end