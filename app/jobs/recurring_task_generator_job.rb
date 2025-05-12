class RecurringTaskGeneratorJob < ApplicationJob
  queue_as :default

  def perform(user_id)
    # Ensure we only process tasks for the given user
    user = User.find(user_id)

    user.tasks.where("due_date <= ? AND recurrence IS NOT NULL AND status = ?", Date.today, 2).each do |task|
      next unless task.recurring?

      next_due = task.next_due_date
      next if next_due > task.recur_until.to_date

      # Check if a task with the same title, due date, and user_id already exists
      unless Task.exists?(title: task.title, due_date: next_due, user_id: user.id)
        Task.create!(
          title: task.title,
          description: task.description,
          notes: task.notes,
          status: "pending",
          priority: task.priority,
          due_date: next_due,
          recurrence: task.recurrence,
          recur_until: task.recur_until,
          user_id: user.id # Associate the new task with the correct user
        )
      end
    end
  end
end
