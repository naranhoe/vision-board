class SessionsController < ApplicationController

  def new
  end

  def create

    # render "new"
    @user = User.find_by email: (params[:session][:email].downcase)

    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user
      redirect_to "/", notice: "Login successful"
    else
      flash.now.alert = "Invalid email or password"
      redirect_to "login"
    end
    # render plain: params.inspect
  end

  def destroy
  end

end
