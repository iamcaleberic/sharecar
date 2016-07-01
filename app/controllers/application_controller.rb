class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  def current_ability
    if user_signed_in?
      @current_ability ||= Ability.new(current_user)
    else
      @current_ability ||= Ability.new(current_superuser)
    end
  end
  rescue_from CanCan::AccessDenied do |exception|
  render :file => "#{Rails.root}/public/403.html", :status => 403, :layout => false
  ## to avoid deprecation warnings with Rails 3.2.x (and incidentally using Ruby 1.9.3 hash syntax)
  ## this render call should be:
  # render file: "#{Rails.root}/public/403", formats: [:html], status: 403, layout: false
  end
  protected

	def configure_permitted_parameters
	  devise_parameter_sanitizer.permit(:sign_up) do |user_params|
	    user_params.permit(:username ,:name, :email, :is_male ,:date_of_birth ,:password)
	  end
	  devise_parameter_sanitizer.permit(:account_update) do |user_params|
	    user_params.permit(:username, :name ,:email, :password ,:current_password, :avatar )
	  end
	end
end
