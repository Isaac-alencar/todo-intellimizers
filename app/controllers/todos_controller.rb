# frozen_string_literal: true

# TodosController
class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end
end
