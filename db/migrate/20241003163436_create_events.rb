class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :event_type
      t.integer :estimated_guests
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
