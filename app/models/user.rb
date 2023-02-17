# frozen_string_literal: true

# User
class User < ApplicationRecord
  has_many :todos, dependent: :delete_all
  validates :name, presence: true
end
