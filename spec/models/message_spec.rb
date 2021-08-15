# typed: false
require 'rails_helper'

RSpec.describe Message, type: :model do
  describe 'validation' do
    let(:message) { build(:message) }
    context 'contentがある時' do
      it 'messageが作成されること' do
        expect(message).to be_valid
      end
    end

    context 'contentがない時' do
      it 'messageが作成されないこと' do
        message.content = ''
        expect(message).to_not be_valid
      end
    end
  end
end
