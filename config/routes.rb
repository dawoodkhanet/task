Rails.application.routes.draw do
  resources :employments
 
  root 'home#index'
  resources :personals
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
