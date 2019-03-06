class Person < ApplicationRecord

    has_many :cars
    validates :first_name, :last_name,  presence: true
    validates :first_name, :last_name, length: { 
        minimum: 2,
        too_short: "%{count} characters is the minimum allowed" }
    #validates :age, numericality: { only_integer: true }

end
