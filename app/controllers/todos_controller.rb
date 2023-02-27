# frozen_string_literal: true

# TodosController
class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def create
    user = User.first
    @todo = Todo.new(description: todo_params[:description], user:)

    @todo.save || flash[:notice] = @todo.errors.full_messages

    redirect_to action: :index
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy

    redirect_to action: :index
  end

  private

  def todo_params
    params.require(:todo).permit(:description)
  end
end
