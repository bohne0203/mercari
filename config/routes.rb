Rails.application.routes.draw do
  devise_for :users
  root 'merkaries#index'
  resources :merkaries
  resources :iems
  resources :uers
end
