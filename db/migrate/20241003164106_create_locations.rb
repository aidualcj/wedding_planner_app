class CreateLocations < ActiveRecord::Migration[7.1]
  def change
    create_table :locations do |t|
      t.string :location_type
      t.integer :capacity
      t.text :notes
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
