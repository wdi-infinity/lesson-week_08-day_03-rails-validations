class AddPersonToCar < ActiveRecord::Migration[5.2]
  def change
    add_reference :cars, :person, foreign_key: true
  end
end
