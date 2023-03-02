# frozen_string_literal: true

# TodosController
class TodosController < ApplicationController
  include PublicAccessibleController

  def index
    @todos = if current_user
               Todo.order(created_at: :desc).where(user_id: current_user.id)
             else
               []
             end
  end

  def create
    user = current_user
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
