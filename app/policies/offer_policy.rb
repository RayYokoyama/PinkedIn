class OfferPolicy < ApplicationPolicy
  
  def initialize(user, offer)
    @user = user
    @offer = offer
  end

  def show?
    user.present?
  end

  def new?
    user&.ea_user?
  end

  def create?
    new?
  end

  def edit?
    user&.admin || user&.enterprise_account_id == @offer.enterprise_account_id
  end

  def update?
    edit?
  end

  def destroy?
    edit?
  end
end
