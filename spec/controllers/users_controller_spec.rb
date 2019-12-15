require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let(:user) { create(:normal_user) }
  before { login_user user }

  describe "GET #show" do
    before { get :show, params: {} }
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    before { get :edit, params: {} }
    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #update" do
    let(:params) { { user: { name: 'テストユーザーupdate', } } }
    before { post :update, params: params }
    it "redirect to 'user/profile'" do
      expect(response).to redirect_to(user_path)
    end

    it "ユーザー情報が更新されている" do
      expect(user.reload.name).to eq('テストユーザーupdate')
    end
  end
end
