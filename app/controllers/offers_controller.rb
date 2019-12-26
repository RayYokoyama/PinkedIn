class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]
  before_action :new_authorize, only: [:new, :create]
  def index
    @offers = Offer.all.order(updated_at: :desc)
    puts @offers
  end

  def show
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(update_params)
    @offer.enterprise_account_id = current_user.enterprise_account.id
    if @offer.save
      redirect_to "/offers/#{@offer.id}"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @offer.update!(update_params)
      redirect_to "/offers/#{@offer.id}"
    else
      render :edit
    end
  end

  def destroy
    @offer.destroy
    redirect_to offers_path
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
    authorize @offer
  end

  def update_params
    params.require(:offer).permit(:name, :description, :deadline, :fee_type, :fee)
  end

  def new_authorize
    authorize Offer
  end
end
