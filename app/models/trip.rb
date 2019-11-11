class Trip < ApplicationRecord
    has_many :bookigns
    has_many :users, through: :bookings
    belongs_to :rocket
    belongs_to :planet
    belongs_to :operator
end