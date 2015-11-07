class UsersController < ApplicationController

  before_action :set_user, only: [:update, :show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcom #{@user.first_name}!"
      redirect_to @user
    else
      render "new"
    end
  end

  def update
    @user.update(user_params)
    redirect_to @user, notice: "#{@user.first_name}'s profile was successfully updated."
  end

  def show
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :avatar)
  end

end
