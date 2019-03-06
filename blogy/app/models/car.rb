class Car < ApplicationRecord

     validates :color, :make, :model, :year, :sunroof,:color, presence: true
     
     validates :year, length: {is: 4 }
end
