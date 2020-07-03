class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]
  before_action :authenticate_user!, except: %i[new create]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.includes([:image_attachment]).includes([:cover_attachment])
      .includes(followers: [:image_attachment]).includes(following: [:image_attachment])
      .includes(posts: [:author]).find(params[:id])
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to posts_path, notice: 'User was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    if @user.update(cover: params[:cover])
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.includes(:posts).includes([:image_attachment]).find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.fetch(:user).permit(:name, :username, :email, :image)
  end
end
