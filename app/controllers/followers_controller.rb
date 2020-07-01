class FollowersController < ApplicationController
  def create
    @follower = Follow.new(user_id: current_user.id)
    @follower.follower_id = params[:user_id]
    if @follower.save
      redirect_to posts_path
    else
      redirect_to posts_path, alert: "Error!"
    end
  end

  def destroy
    @follower = Follow.find_by(follower_id: params[:user_id], user_id: params[:id])
    @follower ||= Follow.find_by(follower_id: params[:id], user_id: current_user.id)
    if @follower.destroy
      redirect_to posts_path
    else
      head :no_content
    end
  end
end
