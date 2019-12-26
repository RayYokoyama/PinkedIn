require 'rails_helper'

RSpec.describe OffersController, type: :controller do

  let(:user) { create(:normal_user) }
  let(:offer) { create(:offer) }
  before {
    login user
    user.enterprise_account = offer.enterprise_account
    user.save
  }

  describe "GET #index" do
    it "returns http success" do
      get :index, params: {} 
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "return http success" do
      get :show, params: { id: offer.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    it "return http success" do
      get :new, params: {}
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "return http success" do
      get :edit, params: { id: offer.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    let(:params) { {
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

    it "offerが追加される" do
      expect do
        post :create, params: params
      end.to change(Offer, :count).by(1)
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

  describe 'DELETE #destroy' do
    it 'deletes the article' do
      expect do
        delete :destroy, params: { id: offer.id }
      end.to change(Offer, :count).by(-1)
    end
  end
end

