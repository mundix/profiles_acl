class BaseController < ApplicationController

  protected

  def get_current_user
    @user = current_user
  end

end