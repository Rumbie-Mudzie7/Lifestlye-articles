class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(name: params[:name])

    if @user
      session[:user_id] = @user.id
      redirect_to @user, notice: 'You are successfully logged in!'
    else
      flash.now[:alert] = 'Invalid name'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Signed out Successfully'
  end
end
