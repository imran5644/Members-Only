Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  # resources :tweets
  resources :tweets, only: [:new, :create, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'tweets#index'
end
