Rails.application.routes.draw do
  devise_for :users
  root 'mercaries#index'
  resources :merkaries
  resources :iems
  resources :users
end
