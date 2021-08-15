# typed: false
require 'rails_helper'

RSpec.describe Offer, type: :model do
  describe 'validationテスト' do
    let(:offer) { build(:offer) }
    let(:enterprise_account) { create(:enterprise_account) }
    before{ offer.enterprise_account = enterprise_account }
    context 'name, fee, description, deadlineがあり、enterprise_accountが紐づいている時' do
      it 'offerを作成できる' do
        expect(offer).to be_valid
      end
    
     context 'nameがない時' do
       it 'offerを作成できない' do
         offer.name = ''
         expect(offer).to_not be_valid
       end
     end

     context 'enterprise_accountが紐づいていない時' do
       it 'offerを作成できない' do
         offer.enterprise_account_id = nil
         expect(offer).to_not be_valid
       end
     end
    end
  end

  describe 'offer_applications用のメソッド' do
    let(:user) { create(:normal_user) }
    let(:offer) { create(:offer) }
    before { user.apply_offer!(offer) }

    it '応募者一覧' do
      expect(offer.users).to include user
    end
  end
end
