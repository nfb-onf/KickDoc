module ApplicationHelper
  def all_genres
    Genre.all
  end

  def is_active? value, default_value
    value.to_sym == default_value ? :active : nil
  end
end
