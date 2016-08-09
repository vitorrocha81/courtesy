class User < ActiveRecord::Base
	has_many :friends
	validates :name, :phone, :company, :position, presence: true
	validates :email, uniqueness: true #somente o email do usuário~precisa ser único.
	validates :phone, numericality: true
end