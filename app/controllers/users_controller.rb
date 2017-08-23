class UsersController < ApplicationController

  def new
  end

  def create
    if params[:user][:password] == params[:user][:password_confirmation]
      @user = User.new(user_params)
      if @user.valid? && User.count < 1
        @user.save
        session[:user_id] = @user.id
        redirect_to '/'
      else
        flash[:notice] = "Invalid credentials, please try again"
        redirect_to '/signup'
      end
    else
      flash[:notice] = "Invalid credentials, please try again"
      redirect_to "/signup"
    end
  end

private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
