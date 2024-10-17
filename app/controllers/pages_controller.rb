class PagesController < ApplicationController
  before_action :authenticate_user! # S'assurer que l'utilisateur est connecté

  def home
    @events = current_user.events # Récupérer les événements de l'utilisateur connecté
  end
end
