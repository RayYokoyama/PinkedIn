# typed: false
class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]
  before_action :offer_authorize, only: [:new, :create, :applied, :posted]

  def index
    @offers = Offer.all.order(updated_at: :desc)
  end

  def show
    @applicants = @offer.offer_applications.map(&:user)
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(update_params)
    @offer.enterprise_account_id = current_user.enterprise_account.id
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @offer.update!(update_params)
      redirect_to offer_path(@offer)
    else
      render :edit
    end
  end

  def destroy
    @offer.destroy
    redirect_to offers_path
  end

  # 応募した求人一覧
  def applied
    @applied_offers = current_user.applied_offers
  end

  # 出した求人一覧
  def posted
    @posted_offers = current_user.enterprise_account.offers
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
    authorize @offer
  end

  def update_params
    params.require(:offer).permit(:name, :description, :deadline, :fee_type, :fee)
  end

  def offer_authorize
    authorize Offer
  end
end
