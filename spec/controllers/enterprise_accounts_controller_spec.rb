require 'rails_helper'

RSpec.describe EnterpriseAccountsController, type: :controller do
  let(:ea_user) { create(:ea_user) }
  let(:enterprise_account) { create(:enterprise_account) }
  before { login ea_user }

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show, params: { id: enterprise_account.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit, params: { id: enterprise_account.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #update" do
    let(:params) { {
      id: enterprise_account.id,
      enterprise_account: {
        name: "更新テスト企業アカウント#{Time.zone.now.to_i}",
        hiragana: "こうしんてすときぎょうあかうんと#{Time.zone.now.to_i}"
      }
    } }
    before { put :update, params: params }
    it "returns http 302" do
      expect(response).to have_http_status(302)
    end

    it "nameが更新されている" do
      expect(enterprise_account.reload.name).to eq(params[:enterprise_account][:name])
    end
  end

  describe 'DELETE #destroy' do
    it 'deletes the enterprise_account' do
      expect do
        delete :destroy, params: { id: enterprise_account.id }
      end.to change(EnterpriseAccount, :count).by(0)
    end
  end
end
