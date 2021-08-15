# typed: true
class EnterpriseAccountPolicy < ApplicationPolicy

  def initialize(user, enterprise_account)
    @user = user
    @enterprise_account = enterprise_account
  end

  def show?
    user&.present?
  end

  def edit?
    @user&.enterprise_account_id == @enterprise_account.id
  end

  def update?
    edit?
  end

  def destroy?
    @user&.admin? || edit?
  end
end
