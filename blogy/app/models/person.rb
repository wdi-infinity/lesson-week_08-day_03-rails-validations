class Person < ApplicationRecord
# https://guides.rubyonrails.org/active_record_validations.html
    validates :first_name, :last_name , presence: true 

    validates :first_name, :last_name , length: { minimum: 3, too_short: 'min is %{count} words' }

      validates :age, numericality: true
validates :age, numericality: {greater_than_or_equal_to:18}

       validates :age, format: { with: /\A[+]?\d+\z/,
    message: "only allows postive nums" }
end
