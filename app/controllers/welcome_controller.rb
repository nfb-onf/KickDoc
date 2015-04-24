class WelcomeController < ApplicationController
  include SessionsHelper

  def index
    @my_documentaries = current_user.is_authenticated? ? Documentary.limit(5) : []
  end
end
