class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:alert] = "Invalid email/password combination"
      render :new
    end
  end



  def destroy
  end

end


# def create
#   @user = User.find_by email: (params[:session][:email].downcase)
#
#   if @user && @user.authenticate(params[:session][:password])
#     session[:user_id] = @user
#     redirect_to "/", notice: "Login successful"
#   else
#     flash.now.alert = "Invalid email or password"
#     redirect_to "login"
#   end
# end
