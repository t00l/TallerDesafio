class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :nombre
      t.string :rut
      t.string :phone
      t.string :email
      t.string :address

      t.timestamps null: false
    end
  end
end
