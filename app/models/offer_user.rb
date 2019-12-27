class OfferUser < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  enum status: { favorited: 0, apply: 1, scout: 2, matched: 3 }

  # 応募、いいね、スカウト
  def create
    @offer_user = OfferUser.new(status: 1)
    @user = User.find(current_user.id)
    @offer = Offer.find(parmas[:id])
    @user.offer_users.offer = @offer
  end

  # 応募を承諾する
  def update

  end

end
