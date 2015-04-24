class User

  attr_accessor :user_id

  def initialize user_id
    @user_id = user_id
  end

  def is_authenticated?
    @user_id != nil
  end
end