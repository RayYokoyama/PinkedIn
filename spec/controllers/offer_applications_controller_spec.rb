# typed: false
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
    let(:offer_application) { create(:offer_application) }
    let(:params) { {
      id: offer_application.offer_id,
    } }

    it "return http success" do
      expect(response).to have_http_status(:success)
    end

    it "acceptedがtrueになっている" do
      put :update, params: params
      offer_application.reload
      expect(offer_application.accepted).to eq(true)
    end
  end
end
