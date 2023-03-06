# frozen_string_literal: true

# Todo
class Todo < ApplicationRecord
  belongs_to :user

  before_create :set_defaults

  validates :description, presence: true

  scope :completed_todos, -> { where(completed: true) }
  scope :uncompleted_todos, -> { where(completed: false) }

  def set_defaults
    self.completed = false
  end
end
