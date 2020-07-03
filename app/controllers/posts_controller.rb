class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]
  before_action :authenticate_user!

  def index
    @followers = current_user.following.map(&:id).push(current_user.id)
    @users = User.where.not(id: @followers).order('id DESC')
    @posts = Post.where(author_id: @followers).order('id DESC').includes(:authors)
  end

  def show
    @post = Post.find(params[:id]).includes(:author)
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to posts_path, flash[:notice] = 'Post was successfully created.'
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post, flash[:notice] = 'Post was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to posts_url, flash[:notice] = 'Post was successfully destroyed.'
    else
      flash[:alert] = 'Post deletion failed'
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.permit(:content)
  end
end
