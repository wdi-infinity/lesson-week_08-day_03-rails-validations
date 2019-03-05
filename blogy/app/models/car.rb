class Car < ApplicationRecord
    belongs_to :person
    validates :make, :model, :year, :sunroof, :color, presence: true
    validates :year, length: {is: 4}
end
