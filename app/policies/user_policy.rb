# typed: true
class UserPolicy < ApplicationPolicy

  def initialize(user, target_user)
    @user = user
    @target_user = target_user
  end

  def show?
    true
  end

  def edit?
    @user&.id == @target_user&.id
  end

  def update?
    edit?
  end

  def destroy?
    @user&.admin? || edit?
  end
end
