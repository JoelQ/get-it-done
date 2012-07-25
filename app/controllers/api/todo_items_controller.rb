class Api::TodoItemsController < ApplicationController
	def index
    todos = TodoItem.all
    render json: todos
  end

  def show
    todo = TodoItem.find(params[:id])
    render json: todo
  end
end
