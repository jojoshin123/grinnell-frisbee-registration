class Captain < ApplicationRecord
 
    validates :name, presence: true, length: { maximum: 30 }
    has_many :player

 end
 