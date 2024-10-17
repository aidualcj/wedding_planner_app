Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'
  get 'dashboard', to: 'pages#dashboard'

  resources :events do
    resources :guests
    resources :tasks # pour les to-do-lists (tâches liées à un événement)
    resources :categories, only: [:create] # pour la création des catégories
    resources :expenses
  end
end
