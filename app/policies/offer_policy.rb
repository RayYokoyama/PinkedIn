# typed: true
class OfferPolicy < ApplicationPolicy
  
  def initialize(user, offer)
    @user = user
    @offer = offer
  end

  def show?
    user.present?
  end

  def new?
    show? && user&.ea_user?
  end

  def create?
    new?
  end

  def edit?
    show? && user&.enterprise_account_id == @offer.enterprise_account_id
  end

  def update?
    edit?
  end

  def destroy?
    user&.admin || edit?
  end

  def applied?
    show? && (user&.admin? || !user&.ea_user?)
  end

  def posted?
    show? && (user&.admin? || user&.ea_user?)
  end
end
