class Trip < ApplicationRecord
    has_many :bookigns
    has_many :users, through: :bookings
    belongs_to :rocket
    # belongs_to :planet
    belongs_to :operator

    def origin_planet

        Planet.find(self.origin_id)
        
    end

    def destination_planet

        Planet.find(self.destination_id)
        
    end
    
end