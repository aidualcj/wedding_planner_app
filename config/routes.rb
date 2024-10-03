Rails.application.routes.draw do
  root to: 'events#index' # Par exemple, la page d'accueil pointe vers l'index des événements

  # Ajoute cette ligne pour Devise
  devise_for :users

  resources :events do
    resources :locations
    resources :guests
    resources :tasks
    resources :expenses
    resources :categories
  end
end
