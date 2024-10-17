class RemoveAssignedToEmailFromTasks < ActiveRecord::Migration[7.1]
  def change
    remove_column :tasks, :assigned_to_email, :string
  end
end
