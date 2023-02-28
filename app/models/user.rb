# frozen_string_literal: true

# User
class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :todos, dependent: :delete_all
  validates :name, presence: true
end
