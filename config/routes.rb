Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # ==== THE FOLLOWING WAS AT THE BEGINING WHEN CREATING THE FRONT END VIEWS ====
  # root to: "pages#home"
  # get "about", to: "pages#about"
  # get "contact", to: "pages#contact"
  # get "category", to: "pages#category"
  # get "allevent", to: "pages#allevent"
  # get "oneevent", to: "pages#oneevent"
  # get "articles", to: "pages#articles"
  # get "onearticle", to: "pages#onearticle"
  # get "signin", to: "pages#signin"
  # get "signup", to: "pages#signup"
  # get "profile", to: "pages#profile"

    root to: 'pages#home'
  
    # devise_for :users
  
    resources :events, only: [:index, :show, :new, :create] do
      resources :bookings, only: [:new, :create]
      resources :reviews, only: [:index, :new, :create, :destroy]
    end
  
    resources :bookings, only: [:show, :edit, :update, :destroy] do
      resources :reviews, only: [:index, :new, :create, :destroy]
    end
  
    resources :categories, only: [:index]
  
    resources :users, only: [:show]
  

end
