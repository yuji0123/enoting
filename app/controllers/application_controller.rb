class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_filter :authenticate_user!

  #無料会員登録後のリダイレクトをログアウト前のページにする場合
  def after_sign_up_path_for(resource)
      redirect_to notes_path
  end

  before_filter :configure_permitted_parameters, if: :devise_controller?
  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up){ |u| u.permit(:user_name, :email, :password) }
      devise_parameter_sanitizer.for(:update){ |u| u.permit(:user_name, :email, :password) }
    end
end
