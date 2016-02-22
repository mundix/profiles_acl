class ProfilesController < ApplicationController
  def index
    @users = User.all.order("created_at DESC")
  end

  def show
  end

  private



end
