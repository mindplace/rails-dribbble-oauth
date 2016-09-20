require "rails-dribbble-oauth/engine"

module RailsDribbbleOauth
  def current_dribbble_user
    User.find_by(id: session[:current_dribbble_user])
  end

  def clear_dribbble_user
    session[:current_dribbble_user] = nil
  end
end
