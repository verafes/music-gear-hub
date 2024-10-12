class SessionsController < Devise::SessionsController
  def destroy
    super do |resource|
      if resource.nil?
        flash[:alert] = 'Logout failed. Please try again.'
        redirect_to root_path and return
      end
    end
    flash[:notice] = 'You have been logged out successfully.'
    redirect_to root_path
  end
end
