class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.date :date
      t.string :maintenannceDetail
      t.references :carFile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
