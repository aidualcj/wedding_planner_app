class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]

  def home
    # Logique pour la page d'accueil si nécessaire
  end

  def dashboard
    # Récupérer les événements de l'utilisateur connecté pour les afficher dans le dashboard
    @events = current_user.events
  end
end
