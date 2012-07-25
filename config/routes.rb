Todolist::Application.routes.draw do
  namespace :api do
    resources :todo_items, except: [:new, :edit]
  end
end
