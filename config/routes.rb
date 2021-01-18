Rails.application.routes.draw do
  resources :groups
  root to: 'transactions#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  resources :users, only: %i[index]
  resources :transactions
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
