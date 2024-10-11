Rails.application.routes.draw do
  devise_for :users

  get 'pages/home'
  root to: 'pages#home'

  authenticated :user do
    root to: 'events#index', as: :authenticated_root
  end

  get 'dashboard', to: 'events#index', as: :dashboard

  resources :events
end
