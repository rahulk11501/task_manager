class AddRecurringToTasks < ActiveRecord::Migration[8.0]
  def change
    add_column :tasks, :recurrence, :string
    add_column :tasks, :recur_until, :date
  end
end
