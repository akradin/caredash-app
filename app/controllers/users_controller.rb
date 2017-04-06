class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # user feedback indicating their sign up was successful since there is nowhere to redirect to
      # redirect_to 'root_path'
      flash[:success] = 'Sign Up Success! Feel free to login!'
      redirect_to '/login'
    else
      render 'new'
    end
  end

  private

  def user_params
    #strong params for security
    params.require(:user).permit(:first_name, :last_name, :email, :password,
                                 :password_confirmation)
  end
end
