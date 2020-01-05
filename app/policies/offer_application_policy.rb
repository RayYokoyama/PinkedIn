class OfferApplicationPolicy < ApplicationPolicy
  
  def initialize(user, offer_application)
    @user = user
    @offer_application = offer_application
  end

  def create?
    present? && (admin? || !user&.ea_user?)
  end

  def update?
    admin? || (@user&.ea_user? && @user.id == @offer_application&.user_id)
  end

  def destroy?
    update?
  end
end
