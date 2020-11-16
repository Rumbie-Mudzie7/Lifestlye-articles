class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(name: params[:name])

    if @user
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'You are successfully logged in!'
    else
      flash.now[:alert] = 'Invalid name'
      redirect_to new_user_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Signed out Successfully'
  end
end
