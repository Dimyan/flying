class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  #def create
  #  @user = User.create(user_params)
  #end
  #
  #def user_params
  #  params.require(:user).permit(:name, :email, :password, :password_confirmation, :remember_me)
  #end
  #private :user_params

end
