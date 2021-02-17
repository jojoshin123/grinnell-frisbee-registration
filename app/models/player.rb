class Player < ApplicationRecord

    belongs_to :captain
    validates :name, presence: true, length: { maximum: 30 }
    validates :captain_id, presence: true

end