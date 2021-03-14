class Captain < ApplicationRecord
 
    has_many :players
    validates :name, presence: true, length: { maximum: 30 }
    validates :email, presence: true, uniqueness: true

    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
 end
 