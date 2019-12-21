class OfferPolicy < ApplicationPolicy
  
  def initialize(user, offer)
    @user = user
    @offer = offer
  end

  def show?
    user.

  end

  def update?
    user.present? && (user.admin || user.enterprise_account_id == @offer.enterprise_account_id)
  end

  protected

  def is_user_exists?
    user.present?
  end
end
