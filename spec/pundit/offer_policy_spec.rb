require 'rails_helper'

describe OfferPolicy do
  let(:offer) { create(:offer) }
  subject { described_class.new(user, offer) }

  context '未ログインの時' do
    let(:user) { nil }
  
    it { is_expected.to_not authorize(:show)    }
    it { is_expected.to_not authorize(:create)  }
    it { is_expected.to_not authorize(:new)     }
    it { is_expected.to_not authorize(:update)  }
    it { is_expected.to_not authorize(:edit)    }
    it { is_expected.to_not authorize(:destroy) }
  end
  
  context '一般ユーザーの場合' do
    let(:user) { create(:user) }
  
    it { is_expected.to     authorize(:show)    }
    it { is_expected.to_not authorize(:create)  }
    it { is_expected.to_not authorize(:new)     }
    it { is_expected.to_not authorize(:update)  }
    it { is_expected.to_not authorize(:edit)    }
    it { is_expected.to_not authorize(:destroy) }
  end
  
  context '企業アカウントユーザーの場合' do
    let(:ea_user) { create(:ea_user) }
  
    it { is_expected.to authorize(:show)    }
    it { is_expected.to authorize(:create)  }
    it { is_expected.to authorize(:new)     }
    it { is_expected.to authorize(:update)  }
    it { is_expected.to authorize(:edit)    }
    it { is_expected.to authorize(:destroy) }
  end
  
  context 'adminユーザーの場合' do
    let(:admin_user) { create(:admin_user) }
  
    it { is_expected.to authorize(:show)    }
    it { is_expected.to authorize(:create)  }
    it { is_expected.to authorize(:new)     }
    it { is_expected.to authorize(:update)  }
    it { is_expected.to authorize(:edit)    }
    it { is_expected.to authorize(:destroy) }
  
  end
end
