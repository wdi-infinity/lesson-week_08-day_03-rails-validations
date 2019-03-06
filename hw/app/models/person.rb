class Person < ApplicationRecord
    validates :first_name,:last_name, :age ,presence: true
   validates :first_name, :last_name, length: {
       minimum: 3,
       too_short:"must have at least %{count} words"
   }
    validates :age, numericality: { only_integer: true }
    

end
