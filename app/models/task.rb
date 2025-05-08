class Task < ApplicationRecord
  belongs_to :user

  enum :status, pending: 0, in_progress: 1, completed: 2

  enum :priority, low: 0, medium: 1, high: 2

  validates :status, presence: true

  after_initialize :set_default_priority, if: :new_record?

  private

  def set_default_priority
    self.priority ||= :medium
  end

  
end
