# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'omniauth/facebook'
  # get 'omniauth/github'
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}
  # get '/auth/:provider/callback', to: 'omniauth#github'
  resources :posts
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
