# typed: false
require 'rails_helper'

describe OfferApplicationPolicy do
  let(:offer_application) { create(:offer_application) }
  subject { described_class.new(user, offer_application) }

  context '未ログインの時' do
    let(:user) { nil }
  
    it { is_expected.to_not authorize(:create)  }
    it { is_expected.to_not authorize(:update)  }
    it { is_expected.to_not authorize(:destroy) }
  end
  
  context '一般ユーザーの場合' do
    let(:user) { create(:normal_user) }
  
    it { is_expected.to     authorize(:create)  }
    it { is_expected.to_not authorize(:update)  }
    it { is_expected.to_not authorize(:destroy) }
  end
  
  context '企業アカウントユーザーの場合' do
    let(:user) { create(:ea_user) }
    before {
      offer_application.user = user
      offer_application.save
    }
  
    it { is_expected.to_not authorize(:create)  }
    it { is_expected.to     authorize(:update)  }
    it { is_expected.to     authorize(:destroy) }
  end
  
  context 'adminユーザーの場合' do
    let(:user) { create(:admin_user) }
  
    it { is_expected.to authorize(:create)  }
    it { is_expected.to authorize(:update)  }
    it { is_expected.to authorize(:destroy) }
  end
end
