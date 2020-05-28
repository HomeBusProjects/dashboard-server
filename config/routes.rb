Rails.application.routes.draw do
  resources :templates
  root 'dashboard#index'

  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }

  resources :cameras
  resources :users
  resources :devices
  resources :reports
end
