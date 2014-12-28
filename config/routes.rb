Rails.application.routes.draw do
  get 'dashboard/index'

  devise_for :users

  root 'pages#index'
  match 'help',     to: 'pages#help',      via: 'get'
  match 'contact',  to: 'pages#contact',   via: 'get'
end
