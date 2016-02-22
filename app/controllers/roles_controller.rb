class RolesController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def set_params
    @role = Role.find(params[:id])
  end

  def roles_params
    params.require(:role).permit(:name)
  end

end
