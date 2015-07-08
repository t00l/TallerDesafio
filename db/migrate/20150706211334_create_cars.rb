class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :plateNumber
      t.string :brand
      t.string :model
      t.integer :year
      t.integer :km
      t.references :owner, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
