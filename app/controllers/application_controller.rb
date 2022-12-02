class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
                                      keys: %i[first_name last_name username password email description experience language availability role
                                              years_of_experience photo])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[username description experience language availability
                                              years_of_experience password])
  end

  def after_sign_in_path_for(user)
    if user.role == "Coder"
      coders_projects_path
    else
      companies_users_path
    end
  end
end
