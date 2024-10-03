class CreateGuests < ActiveRecord::Migration[7.1]
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :group
      t.string :diet
      t.string :rsvp_status
      t.references :event, null: false, foreign_key: true
      t.integer :primary_guest_id

      t.timestamps
    end
  end
end
