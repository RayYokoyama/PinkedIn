# typed: false
class UsersController < ApplicationController
  before_action :redirect_if_not_logged_in, :set_user
  before_action :redirect_if_current_user, only:[:show]


  def show
    @user = User.find(params[:id]) if request.fullpath != '/user/profile'
    if @user.ea_user?
      @enterprise_account = EnterpriseAccount.find(@user.enterprise_account_id)
    end
  end

  def edit 
  end

  def update
    @user.update!(update_params)
    redirect_to user_path
  end

  protected 

  def redirect_if_not_logged_in
    redirect_to root_path unless current_user
  end

  def redirect_if_current_user
    if params[:id].to_i == current_user.id
      redirect_to user_path
    end
  end

  def set_user
    @user = current_user
    authorize @user
  end

  def update_params
    params.require(:user).permit(:name, :hiragana, :birth_day, :graduated_university, :current_career)
  end
end
