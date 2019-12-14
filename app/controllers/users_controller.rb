class UsersController < ApplicationController
  before_action :redirect_if_not_logged_in, :set_user
  before_action :redirect_if_current_user, only:[:show]


  def show
  end

  def edit 
  end

  def update
  end

  protected 

  def redirect_if_not_logged_in
    redirect_to '/' unless current_user
  end

  def redirect_if_current_user
    if params[:id].to_i == current_user.id
      redirect_to '/profile' 
    end
  end

  def set_user
    @user = current_user
  end
end
