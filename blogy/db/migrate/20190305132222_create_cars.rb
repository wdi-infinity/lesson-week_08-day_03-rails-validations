class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.boolean :moonroof
      t.string :dealership
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
