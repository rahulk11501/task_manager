class AddStatusToTasks < ActiveRecord::Migration[8.0]
  def change
    remove_column :tasks, :completed, :boolean
    add_column :tasks, :status, :integer
  end
end
