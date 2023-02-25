Rails.application.routes.draw do
  devise_for :users, sign_out_via: [:get]

  root to: 'home#index'

  resources :categories, only: %i[new create index] do
    resources :transactions, only: %i[index create new]
  end

  resources :users, only: %i[index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
