require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #show" do
    let(:user) { create(:normal_user) }
    before {
      login_user user
      get :show, params: {}, session:{}
    }
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

end
