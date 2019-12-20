require 'rails_helper'

RSpec.describe OffersController, type: :controller do

  let(:user) { create(:normal_user) }
  before { login_user user }

  describe "GET #index" do
    before { get :index, params: {} }
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    let(:offer) { create(:offer) }
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
    let(:offer) { create(:offer) }
    before { get :edit, params: { id: offer.id } }
    it "return http success" do
    end
  end
end
