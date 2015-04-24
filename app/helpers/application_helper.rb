module ApplicationHelper
  def all_genres
    @all_genres ||= @documentaries.map(&:genres).flatten.uniq
  end

  def is_active? value, default_value
    value.to_sym == default_value ? :active : nil
  end
end
