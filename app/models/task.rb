class Task < ApplicationRecord
  # Associations
  has_many :comments, dependent: :destroy
  belongs_to :user

  # Enums
  enum :status, pending: 0, in_progress: 1, completed: 2
  enum :priority, low: 0, medium: 1, high: 2
  enum :recurrence, daily: "daily", weekly: "weekly", monthly: "monthly"
  # Validations
  validates :status, presence: true

  # Callbacks
  after_initialize :set_default_priority, if: :new_record?

  # Methods
  def recurring?
    recurrence.present? && recurrence != "none"
  end

  def next_due_date
    return unless recurring?

    case recurrence
    when "daily" then due_date + 1.day
    when "weekly" then due_date + 1.week
    when "monthly" then due_date + 1.month
    end
  end

  private

  def set_default_priority
    self.priority ||= :medium
  end
end
