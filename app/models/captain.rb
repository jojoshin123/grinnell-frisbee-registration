class Captain < ApplicationRecord
 
    has_many :player
    validates :name, presence: true, length: { maximum: 30 }

 end
 