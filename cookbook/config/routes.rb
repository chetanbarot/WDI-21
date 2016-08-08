Rails.application.routes.draw do

  resources :recipes
  root "users#index"

  resources :users, except: [:new, :create]

  get "register", to: "authentications#new"
  post "register", to: "authentications#create"

  resources :sessions, only: [:create]
  
  get "login", to: "sessions#new"
  delete "logout", to: "sessions#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
