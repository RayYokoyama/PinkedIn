require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let(:user) { create(:normal_user) }
  describe "GET #show" do
    before {
      login_user user
      get :show, params: {}, session:{}
    }
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    before {
      login_user user
      get :edit, params: {}, session:{}
    }
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end
end
