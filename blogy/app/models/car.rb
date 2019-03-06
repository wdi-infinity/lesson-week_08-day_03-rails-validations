class Car < ApplicationRecord

    belongs_to :person
    validates  :make, :model, :year, :sunroof, :color, presence: true
    validates :year,  length: {
       maximum: 4,
       minimum:4,
       too_short:"must have at maximum %{count} digits"
   }

end
