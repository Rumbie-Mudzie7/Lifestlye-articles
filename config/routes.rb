Rails.application.routes.draw do
  resources :sessions, only: %i[new]
  resources :users, only: %i[new create show]
  get 'sign_up', to: 'users#new', as: 'sign_up'
  get 'sign_in', to: 'sessions#new', as: 'sign_in'
  get 'sign_out', to: 'sessions#destroy', as: 'sign_out'
  resources :categories
  resources :articles
  root 'sessions#new'
end
