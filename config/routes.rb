Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'task', to: 'tasks#task'
  get 'tasks/:id', to: 'tasks#show', as: :show
  get "new", to: "tasks#new"
  post "tasks", to: "tasks#add"
  get "delete/:id", to: "tasks#delete", as: :delete
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update", as: :update_task
end
