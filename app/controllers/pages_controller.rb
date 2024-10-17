class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]

  def home
    # Logique pour la page d'accueil si nécessaire à faire plus tard
  end

  def dashboard
    @events = current_user.events
  end
end
