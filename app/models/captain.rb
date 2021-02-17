class Captain < ApplicationRecord
 
    has_many :players
    validates :name, presence: true, length: { maximum: 30 }

 end
 