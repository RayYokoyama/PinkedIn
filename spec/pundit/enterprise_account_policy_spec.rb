# typed: false
require 'rails_helper'

describe EnterpriseAccountPolicy do
  let(:enterprise_account) { create(:enterprise_account) }
  subject { described_class.new(user, enterprise_account) }

  context '未ログインの時' do
    let(:user) { nil }
  
    it { is_expected.to_not authorize(:show)    }
    it { is_expected.to_not authorize(:update)  }
    it { is_expected.to_not authorize(:edit)    }
    it { is_expected.to_not authorize(:destroy) }
  end
  
  context '一般ユーザーの場合' do
    let(:user) { create(:normal_user) }
  
    it { is_expected.to     authorize(:show)    }
    it { is_expected.to_not authorize(:update)  }
    it { is_expected.to_not authorize(:edit)    }
    it { is_expected.to_not authorize(:destroy) }
  end
  
  context '企業アカウントユーザーの場合' do
    let(:user) { create(:ea_user) }
    before {
      user.enterprise_account = enterprise_account
      user.save
    }

    it { is_expected.to authorize(:show)    }
    it { is_expected.to authorize(:update)  }
    it { is_expected.to authorize(:edit)    }
    it { is_expected.to authorize(:destroy) }
  end
  
  context 'adminユーザーの場合' do
    let(:user) { create(:admin_user) }
  
    it { is_expected.to authorize(:show)    }
    it { is_expected.to_not authorize(:update)  }
    it { is_expected.to_not authorize(:edit)    }
    it { is_expected.to authorize(:destroy) }
  end
end
