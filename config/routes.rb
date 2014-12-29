Rails.application.routes.draw do

  devise_for :users
  resources :profiles, only: [:index, :show, :update, :destroy]

  root 'pages#index'
  match 'help',     to: 'pages#help',      via: 'get'
  match 'contact',  to: 'pages#contact',   via: 'get'
  match 'dashboard', to: 'dashboard#index', via: 'get'
end
