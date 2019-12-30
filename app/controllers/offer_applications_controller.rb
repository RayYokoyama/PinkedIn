class OfferApplicationsController < ApplicationController
  def create
    @offer = Offer.find(params[:offer_application][:offer_id])
    current_user.apply_offer!(@offer)
    redirect_to offer_path(@offer)
  end

  def update
  end
end
