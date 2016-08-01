class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user_stuff = params.require(:user).permit(:name, :email)
    @user = User.create!(user_stuff)
    redirect_to(signup_path)
  end
end
