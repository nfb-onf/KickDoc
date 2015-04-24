module SessionsHelper
  def current_user
    @current_user ||= User.new(session[:user_id])
  end
end