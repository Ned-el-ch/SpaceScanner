class Rocket < ApplicationRecord
    has_many :trips
    has_many :operators ,through: :trips
    has_many :planets ,through: :trips

end