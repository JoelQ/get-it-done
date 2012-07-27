class Api::TodoItemsController < ApplicationController
	def index
    todos = TodoItem.all
    render json: todos
  end

  def create
    respond_to do |format|
      format.json do
        render json: TodoItem.create(params[:todo_item])
      end
    end
  end

  def update
    respond_to do |format|
      format.json do
        todo = TodoItem.find(params[:id])
        render json: todo.update_attributes(params[:todo_item])
      end
    end
  end

  def show
    todo = TodoItem.find(params[:id])
    render json: todo
  end
end
