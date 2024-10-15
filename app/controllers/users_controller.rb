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

      if params[:category].present?
            @instrument = @instruments.where(category: params[:category])
          end
    end

    # GET /users/new
    def new
      @user = User.new
    end

    # Show user profile
    def show
    end

    # POST /users or /users.json
    def create
      @user = User.new(user_params)
      respond_to do |format|
        if @user.save
          format.html { redirect_to user_url(@user), notice: "User was successfully created." }
          format.json { render :show, status: :created, location: @user }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end


    # PATCH/PUT /users/1 or /users/1.json
    def update
      respond_to do |format|
        if @user.update(user_params)
          format.html { redirect_to user_url(@user), notice: "User was successfully updated." }
          format.json { render :show, status: :ok, location: @user }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end
    end


    def destroy
      @user.destroy!
      respond_to do |format|
        format.html { redirect_to users_url, notice: "User was successfully deleted." }
        format.json { head :no_content }
      end
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
