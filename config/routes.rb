Rails.application.routes.draw do
  resources :users, :only => :none do
    resources :brew_sessions
  end

  devise_for :users

  root 'pages#index'
  match 'help',     to: 'pages#help',      via: 'get'
  match 'contact',  to: 'pages#contact',   via: 'get'

  resources :dashboard, only: [:index, :show]
end
