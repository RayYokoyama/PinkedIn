require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validationテスト' do
    let(:user) { create(:user) }

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
  end
end
