# frozen_string_literal: true

# Users/TodosController

module Users
  # Users/TodosController
  class TodosController < ApplicationController
    def index
      @todos = Todo.all.where(user_id: current_user.id)
    end
  end
end
