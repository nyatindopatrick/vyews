class VotesController < ApplicationController
  def create
    @votes = Vote.new(voter_id: current_user.id, post_id: params[:post_id],
                      voted: params[:voted])
    if @votes.save
      redirect_to posts_path
    else
      head :no_content
    end
  end

  def destroy
    @vote = Vote.find(params[:id])
    if @vote.destroy
      redirect_to posts_path
    else
      head :no_content
    end
  end
end
