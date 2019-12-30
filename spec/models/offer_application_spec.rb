require 'rails_helper'

RSpec.describe OfferApplication, type: :model do
  describe 'validation' do
    let(:user) { create(:normal_user) }
    let(:offer) { create(:offer) }
    let(:offer_application) { user.offer_applications.build(user_id: user.id, offer_id: offer.id) }
    context 'user_id, offer_idがある時' do
      it 'offer_applicationが作成できる' do
        expect(offer_application).to be_valid
      end
    end
    context 'offer_idがない時' do
      it 'offer_applicationが作成できない' do
        offer_application.offer_id = nil
        expect(offer_application).to_not be_valid
      end
    end
  end
end
