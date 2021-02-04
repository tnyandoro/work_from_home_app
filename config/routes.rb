# frozen_string_literal: true

Rails.application.routes.draw do
  root 'users#index'
  devise_for :users
  resources :groups, only: %i[index new create show edit update]
  resources :users, only: %i[index]
  resources :transactions, only: %i[index new create show edit update destroy]
end
