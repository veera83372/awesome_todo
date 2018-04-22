Rails.application.routes.draw do
  get 'todo/index'
  resources :todo_lists
  root 'todo#index'
end
