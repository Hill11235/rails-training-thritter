Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users, only: [:show, :create, :new] do
    resources :posts
  end

  resources :posts, only: [:show, :index]
end
