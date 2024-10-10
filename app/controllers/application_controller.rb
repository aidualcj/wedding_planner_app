class ApplicationController < ActionController::Base
  # Redirects user to events index after sign in
  def after_sign_in_path_for(resource)
    dashboard_path
  end

  # Redirects user to homepage after sign out
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end
end
