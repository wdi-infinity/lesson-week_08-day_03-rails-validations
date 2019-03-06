class Car < ApplicationRecord
    validates :make, :model, :year, :color ,presence: true
    validates :year,  length: {
        maximum: 4,
        minimum:4,
        too_short:"must have at maximum %{count} digits"
    }
end
