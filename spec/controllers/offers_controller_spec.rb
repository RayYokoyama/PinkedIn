require 'rails_helper'

RSpec.describe OffersController, type: :controller do

  let(:ea_user) { create(:ea_user) }
  let(:offer) { create(:offer) }
  before { login_user ea_user }

  describe "GET #index" do
    before { get :index, params: {} }
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    before { get :show, params: { id: offer.id } }
    it "return http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #new" do
    before { get :new, params: {} }
    it "return http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    before { get :edit, params: { id: offer.id } }
    it "return http success" do
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
      put :update, params: update_params
      offer.reload
      expect(offer.name).to eq update_params[:offer][:name]
    end
  end

  describe 'DELETE #destroy' do
    it 'deletes the article' do
      expect do
        delete :destroy, params: { id: offer.id }
      end.to change(Offer, :count).by(0)
    end
  end
end

