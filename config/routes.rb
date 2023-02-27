Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'todos#index'
  # get '/', to: 'example#index'
  resources :todos, only: %i[index create update]
end
