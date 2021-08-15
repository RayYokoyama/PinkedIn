# typed: false
require 'rails_helper'

RSpec.describe Room, type: :model do
  describe 'validation' do
    let(:room) { build(:room) }
    it 'roomが作成されること' do
      expect(room).to be_valid
    end
  end
end
