class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(allowed_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Welcome To Slack #{@user.first_name}"
      redirect_to root_path(@user)
    else
      render :new
    end
  end

  private

  def allowed_params
    params.require(:user).permit(:email, :first_name, :last_name, :password, :password_confirmation)
  end
end
