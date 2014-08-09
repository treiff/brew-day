Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  match 'help',     to: 'pages#help',      via: 'get'
  match 'about',    to: 'pages#about',     via: 'get'
  match 'contact',  to: 'pages#contact',   via: 'get'
end
