class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]
  before_action :authenticate_user!

  def index
    @followers = current_user.following.map(&:id).push(current_user.id)
    @users = User.where.not(id: @followers).includes(image_attachment: :blob).order('id DESC')
    @posts = Post.where(author_id: @followers).includes(author: [image_attachment: :blob]).order('id DESC')
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
      flash[:notice] = 'Post was successfully created.'
      redirect_to posts_path
    else
      render :new
    end
  end

  def update
    if @post.update(post_params)
      flash[:notice] = 'Post was successfully updated.'
      redirect_to @post
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    if @post.destroy
      flash[:notice] = 'Post was successfully destroyed.'
      redirect_to posts_url
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
