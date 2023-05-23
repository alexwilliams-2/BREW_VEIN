Rails.application.routes.draw do
  # get 'orders/index'
  # get 'orders/show'
  # get 'orders/destroy'
  devise_for :users

  root to: "pages#home"


  resources :users, only: %i[show] do
    resources :orders, only: %i[index new create]
  end
  resources :orders, only: [:destroy]

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :beers, only: %i[index show new create destroy]
  # resources :orders, only: %i[index destroy new create]
end
