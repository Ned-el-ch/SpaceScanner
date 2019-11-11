class Planet < ApplicationRecord
    
    has_many :trips
    has_many :rockets ,through: :trips
    has_many :operators ,through: :trips
    
end