Rails.application.routes.draw do

  root to: 'transactions#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :groups, only: %i[index new create show edit update]
  resources :users, only: %i[index]
  resources :transactions
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
