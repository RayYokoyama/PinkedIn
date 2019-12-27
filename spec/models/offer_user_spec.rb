require 'rails_helper'

RSpec.describe OfferUser, type: :model do
  let(:user) { create(:normal_user) }
  let(:offer) { create(:offer) }
  before { login user }
  describe '応募のメソッド' do
    it 'offer_userがstatus:1で作成される' do
      get :apply_offer, parmas: { id: offer.id }
    end
  end

  describe '応募承諾のメソッド' do
    it 'offer_userのstatusが3に更新される' do

    end
  end

  describe 'いいねのメソッド' do
    it 'offer_userがstatus:0で作成される' do

    end
  end

  describe 'スカウトのメソッド' do
    it 'offer_userがstatus:2で作成される' do

    end
  end
end
