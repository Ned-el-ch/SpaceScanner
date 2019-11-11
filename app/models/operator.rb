class Operator < ApplicationRecord
    has_many :trips
    has_many :rockets ,through: :trips
    has_many :planets ,through: :trips
    has_many :users ,through: :trips
end