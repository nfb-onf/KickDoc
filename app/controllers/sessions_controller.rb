class SessionsController < ApplicationController
  def new
    session[:user_id] = 1

    redirect_to root_path
  end

  def destroy
    session[:user_id] = nil

    redirect_to root_path
  end

end
