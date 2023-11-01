class TodosController < ApplicationController
  before_action :authenticate

  def index
    @todo = current_user.todos
  end

  def new
    @todo = Todo.new
  end

  def create
    current_user.todos.create(todo_params)
    redirect_to todos_path
  end

  def todo_params
    params.require(:todo).permit(:title)
  end
end
