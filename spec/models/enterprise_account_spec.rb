# typed: false
require 'rails_helper'

RSpec.describe EnterpriseAccount, type: :model do
  describe 'validationテスト' do
    let(:enterprise_account) { build(:enterprise_account) }
    context 'nameがある時' do
      it 'enterprise_accountを作成できる' do
        expect(enterprise_account).to be_valid
      end
    
     context 'nameがない時' do
       it 'enterprise_accountを作成できない' do
         enterprise_account.name = ''
         expect(enterprise_account).to_not be_valid
       end
     end
    end
  end
end
