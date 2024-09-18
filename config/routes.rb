Rails.application.routes.draw do
  # get 'docs/index'
  
  # get "/", to: "docs#index"
  # get "/docs/:id", to: "docs#show"
  # root "docs#index"
  # # get "/docs/:id/edit", to: "docs#edit"
  # resources :docs
  # resources :doc do
  #   resources :comments
  # end
  resources :docs
  get "/", to: "user#signin"
  post 'register', to: 'user#create', as: 'register'
  get "/login", to: "user#login"
  post "login", to: "user#login"  
  get 'docs/index', to: 'docs#index', as: 'index'

end
