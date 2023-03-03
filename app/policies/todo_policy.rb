# frozen_string_literal: true

# TodosPolicy
class TodoPolicy < ApplicationPolicy
  def destroy?
    belongs_to_user?
  end

  private

  def belongs_to_user?
    record.user_id == user.id
  end
end
