Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "tasks/new", to: "tasks#new", as: :new_task
  post "tasks", to: "tasks#create"

  get "up" => "rails/health#show", as: :rails_health_check
  get "tasks", to: "tasks#index", as: :index
  # Defines the root path route ("/")
  get 'tasks/:id', to: 'tasks#show',    as: :task
  # root "posts#index"
  # GET the HTML form (pre-filled with restaurant attributes) for editing = 1 request
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  # PATCH the parameters to update an existing restaurant = 1 request
  patch "tasks/:id",  to: 'tasks#update'

  delete "tasks/:id", to: 'tasks#destroy'
end
