class UsersController < ApplicationController
  def show
    if current_user
      @user = User.find(current_user.id)
    else
      redirect_to '/'
      
    end
  end
end
