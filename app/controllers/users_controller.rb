class UsersController < ApplicationController
    before_action :authenticate_user!, only: [:show, :edit, :update, :destroy]
    before_action :set_user, only: [:show, :edit, :update, :destroy]

    def index
      @users = User.all
      if (session[:current_user])
        @current_user = User.find(session[:current_user])
      else
        @current_user = nil
      end
    end

    # Show user profile
    def show
    end

    # Edit user profile
    def edit
    end

    # Update user profile
    def update
      if @user.valid_password?(params[:user][:current_password])
        if @user.update(user_params)
          bypass_sign_in(@user)
          redirect_to @user, notice: 'Your profile has been updated.'
        end
      else
        render :edit
      end
    end

    def destroy
        session.clear
#         @user.destroy
        redirect_to root_path, notice: 'User account has been deleted.'
    end

    private

    # Find the user based on ID in params
    def set_user
      @user = User.find(params[:id])
      unless @user
        redirect_to root_path, alert: "User not found"
      end
    end

    # Strong parameters to permit user attributes
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
    end

end
