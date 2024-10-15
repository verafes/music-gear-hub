class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  protect_from_forgery with: :exception
  include CurrentCart
  before_action :set_cart

  protected

    def after_sign_out_path_for(resource_or_scope)
      root_path
    end
end
