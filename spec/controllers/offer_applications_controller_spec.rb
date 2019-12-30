require 'rails_helper'

RSpec.describe OfferApplicationsController, type: :controller do
  let(:user) { create(:normal_user) }
  before { login user }
  describe "POST #create" do
    let(:offer) { create(:offer) }
    let(:params) { {
      offer_application: {
        offer_id: offer.id 
      }
    } }

    it "return http success" do
      expect(response).to have_http_status(:success)
    end

    it "offer_aplicationが作成される" do
      expect do
        post :create, params: params
      end.to change(OfferApplication, :count).by(1)
    end
  end
  
  describe "PUT #update" do
    let(:update_params) { {
      id: offer.id,
      offer: {
        name: "test_offer_#{Time.zone.now.to_i}",
        fee_type: :month,
        fee: 100000,
        description: 'this is test offer',
        deadline: Time.zone.now
      }
    } }

    it "return http success" do
      expect(response).to have_http_status(:success)
    end

    it "求人が更新されている" do
      offer.enterprise_account = user.enterprise_account
      put :update, params: update_params
      offer.reload
      expect(offer.name).to eq update_params[:offer][:name]
    end
  end
end
