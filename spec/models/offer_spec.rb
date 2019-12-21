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
end
