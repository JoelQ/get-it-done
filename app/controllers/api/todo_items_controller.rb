class Api::TodoItemsController < ApplicationController
	def index
    todos = TodoItem.all
    render json: todos
  end
end
