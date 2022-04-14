Rails.application.routes.draw do
  get 'home/show'
  get 'dashboard', to: 'dashboard#show'
  get 'login' => 'user_sessions#new', :as => :login
  root "home#show"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
