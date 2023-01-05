Rails.application.routes.draw do
  resources :purchases
  devise_for :users, controllers: { sessions: :user_sessions },
             path_names: { sign_in: :login }
  resource :user, only: [:show, :update]
  resources :movies
  resources :sessions
  resources :purchases
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #
  # root "movies#index"
  get 'cartelera', to: 'sessions#get_cartelera'
  post '/sessions/:id/comprar', to: 'sessions#comprar_entrada'
end
