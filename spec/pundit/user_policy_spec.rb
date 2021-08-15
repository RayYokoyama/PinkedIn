# typed: false
require 'rails_helper'

describe UserPolicy do
  context 'target_userが自分で' do
    subject { described_class.new(user, user) }

    context '一般ユーザーの場合' do
      let(:user) { create(:normal_user) }

      it { is_expected.to authorize(:show)    }
      it { is_expected.to authorize(:update)  }
      it { is_expected.to authorize(:edit)    }
      it { is_expected.to authorize(:destroy) }
    end

    context '企業アカウントユーザーの場合' do
      let(:user) { create(:ea_user) }

      it { is_expected.to authorize(:show)    }
      it { is_expected.to authorize(:update)  }
      it { is_expected.to authorize(:edit)    }
      it { is_expected.to authorize(:destroy) }
    end

    context 'adminユーザーの場合' do
      let(:user) { create(:admin_user) }

      it { is_expected.to authorize(:show)    }
      it { is_expected.to authorize(:update)  }
      it { is_expected.to authorize(:edit)    }
      it { is_expected.to authorize(:destroy) }
    end
  end

  context 'target_userが他人で' do
    let(:target_user) { create(:target_user) }
    subject { described_class.new(user, target_user) }

    context '未ログインの時' do
      let(:user) { nil }

      it { is_expected.to     authorize(:show)    }
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

      it { is_expected.to     authorize(:show)    }
      it { is_expected.to_not authorize(:update)  }
      it { is_expected.to_not authorize(:edit)    }
      it { is_expected.to_not authorize(:destroy) }
    end

    context 'adminユーザーの場合' do
      let(:user) { create(:admin_user) }

      it { is_expected.to     authorize(:show)    }
      it { is_expected.to_not authorize(:update)  }
      it { is_expected.to_not authorize(:edit)    }
      it { is_expected.to     authorize(:destroy) }
    end
  end
end
