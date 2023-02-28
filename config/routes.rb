Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'todos#index'
  # get '/', to: 'example#index'
  resources :todos, only: %i[index create update destroy]

  resources :users, only: %i[index] do
    member do
      resources :todos, module: :users, only: %i[index]
    end
  end
end
