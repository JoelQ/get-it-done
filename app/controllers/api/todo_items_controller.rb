class Api::TodoItemsController < ApplicationController
	def index
    todos = TodoItem.all
    render json: todos
  end

  def create
    render json: TodoItem.create(params[:todo_item])
  end

  def update
    todo = TodoItem.find(params[:id])
    render json: todo.update_attributes(params[:todo_item])
  end

  def show
    todo = TodoItem.find(params[:id])
    render json: todo
  end
end
