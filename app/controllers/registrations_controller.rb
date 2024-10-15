class RegistrationsController < Devise::RegistrationsController

 private

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def configure_account_update_params
    # Permit additional parameters for account update
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

 def sign_up_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation)
 end

 def account_update_params
  params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
 end

end
