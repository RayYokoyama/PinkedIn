require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validationテスト' do
    let(:user) { create(:normal_user) }

    context 'name, hiragana, emailがある時' do
      it 'userを作成できる' do
        expect(user).to be_valid
      end
    end

    context 'nameが空文字の時' do
      it 'userを作成できない' do
        user.name = ''
        expect(user).not_to be_valid
      end
    end

    context 'passwordが8文字以下の時' do
      it 'userを作成できない' do
        user.password = 'ssss'
        expect(user).not_to be_valid
      end
    end

    context '企業アカウントユーザーの時' do
      let(:ea_user) { create(:ea_user) }
      let(:enterprise_account) { create(:enterprise_account) }
      before { ea_user.enterprise_account = enterprise_account }

      it 'user登録できる' do
        expect(user).to be_valid
      end

      it 'enterprise_accountと紐づく' do
        expect(ea_user.enterprise_account.id).to eq(enterprise_account.id)
      end
    end
  end
end
