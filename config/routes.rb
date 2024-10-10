Rails.application.routes.draw do
  get 'pages/home'
 root to: 'pages#home'

devise_for :users

authenticated :user do
  root to: 'events#index', as: :authenticated_root
end

get 'dashboard', to: 'events#index', as: :dashboard

  resources :events
end
