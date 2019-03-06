class Person < ApplicationRecord
    has_many :cars, dependent: :destroy
    
    validates :first_name, :last_name, length: {minimum: 3,
        too_short: "must have at least %{count} words"
    }

    validates :first_name, :last_name, presence: true

    # validates :age, numericality: true
    validates :age, format: {with:  /\A[+]?\d+\z/,
    message:"nly allows positive number"
    }
    validates :age, numericality: {greater_than:18}
end
