class WelcomeController < ApplicationController
  def index
    @categories = %w(animation classique fiction grands_enjeux femmes_au_cinema peuples_autochtones).sort
  end
end
