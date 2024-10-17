Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'
  get 'dashboard', to: 'pages#dashboard'

  resources :events do
    resources :guests
    resources :tasks
    resources :categories, only: [:create]
    resources :expenses
  end
end
