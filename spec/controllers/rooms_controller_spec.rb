# typed: false
require 'rails_helper'

RSpec.describe RoomsController, type: :controller do
  let(:user) { create(:normal_user) }
  before { login user }

  describe "GET #index" do
    let(:room) { create(:room) }

    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    let(:room) { create(:room) }

    it "returns http success" do
      get :show, params: { id: room.id }
      expect(response).to have_http_status(:success)
    end
  end
end
