class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.date :due_date
      t.string :status
      t.string :assigned_to_name
      t.string :assigned_to_email
      t.references :event, null: false, foreign_key: true
      t.references :guest, null: false, foreign_key: true, null: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
