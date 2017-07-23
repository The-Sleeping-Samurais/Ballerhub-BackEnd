# frozen_string_literal: true
Rails.application.routes.draw do
  resources :teams
  resources :posts
  resources :ballers
  resources :brands
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  resources :examples, except: [:new, :edit]
  resources :brands, only: [:index, :show, :destroy, :update]
  resources :ballers, only: [:index, :show, :destroy, :update]
end
