Rails.application.routes.draw do
  get 'orders/index'
  get 'orders/show'
  get 'orders/destroy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :beers, only: [:index, :show, :new, :create, :destroy] do
    resources :orders, only: %i[index destroy new create]
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
