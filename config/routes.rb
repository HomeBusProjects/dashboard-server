Rails.application.routes.draw do
  root 'dashboard#index'

  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }

  resources :cameras
  resources :users
end
