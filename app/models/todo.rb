# frozen_string_literal: true

# Todo
class Todo < ApplicationRecord
  belongs_to :user

  before_create :set_defaults

  validates :description, presence: true

  def set_defaults
    self.completed = false
  end
end
