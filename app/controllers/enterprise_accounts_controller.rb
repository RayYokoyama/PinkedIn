class EnterpriseAccountsController < ApplicationController
  before_action :set_enterprise_account, only: [:show, :edit, :update, :destroy]
  def index
    @enterprise_accounts = EnterpriseAccount.all
  end

  def show
  end

  def edit
  end

  def update
    if @enterprise_account.update!(update_params)
      redirect_to enterprise_account_path(@enterprise_account)
    else
      render :new
    end
  end

  def destroy
    @enterprise_account.destroy
    redirect_to enterprise_accounts_path
  end

  private

  def set_enterprise_account
    @enterprise_account = EnterpriseAccount.find(params[:id])
  end

  def update_params
    params.require(:enterprise_account).permit(:name, :hiragana)
  end
end
