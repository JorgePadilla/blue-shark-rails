Rails.application.routes.draw do
  resources :patients
  get 'register', to: 'user_registration#new'
  post "register/user", to: 'user_registration#create'
  get 'dashboard', to: 'dashboard#show'
  get 'login' => 'user_sessions#new', :as => :login
  post 'login' => "user_sessions#create"
  root "home#show"
  delete 'logout', to: 'user_sessions#destroy', as: :logout
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
