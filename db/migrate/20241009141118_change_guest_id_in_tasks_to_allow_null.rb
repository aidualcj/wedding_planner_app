class ChangeGuestIdInTasksToAllowNull < ActiveRecord::Migration[7.1]
  def change
    change_column_null :tasks, :guest_id, true
  end
end
