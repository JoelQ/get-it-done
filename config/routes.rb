Todolist::Application.routes.draw do
  resources :todo_items, only: :index
  namespace :api do
    resources :todo_items, except: [:new, :edit]
  end
end
