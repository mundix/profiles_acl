class ProfilesController < ApplicationController
  before_action :find_profile, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @users = User.all.order("created_at DESC")
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.user = current_user
    if @user.save
      redirect_to profile_path
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_profile
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email,:password,:password_digest,:first,:last,:gender,:birth,:user)
  end

end
