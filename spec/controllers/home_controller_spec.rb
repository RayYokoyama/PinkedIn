require 'rails_helper'

RSpec.describe HomeController, type: :controller do

  describe "GET #index" do
    before { get :index, params: {}, session:{} }
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

end
