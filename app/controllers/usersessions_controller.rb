class UsersessionsController < ApplicationController
  def new
    @session = User.new
  end

  def create
    @user = User.find_by(username: params[:username])
    if @user
      session[:user_id] = @user.id
      redirect_to posts_path
    else
      flash[:alert] = "Please check your username!"
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    @current_user = nil
    redirect_to posts_path
  end
end
