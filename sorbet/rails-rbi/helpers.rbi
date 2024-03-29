# typed: strong
# This is an autogenerated file for Rails helpers.
# Please rerun bundle exec rake rails_rbi:helpers to regenerate.
module ApplicationHelper
  include Kernel
  include ActionView::Helpers
  include Devise::Controllers::Helpers
end

module EnterpriseAccountsHelper
  include Kernel
  include ActionView::Helpers
  include ApplicationHelper
  include Devise::Controllers::Helpers
end

module HomeHelper
  include Kernel
  include ActionView::Helpers
  include ApplicationHelper
  include Devise::Controllers::Helpers
end

module OfferApplicationsHelper
  include Kernel
  include ActionView::Helpers
  include ApplicationHelper
  include Devise::Controllers::Helpers
end

module OffersHelper
  include Kernel
  include ActionView::Helpers
  include ApplicationHelper
  include Devise::Controllers::Helpers
end

module RoomsHelper
  include Kernel
  include ActionView::Helpers
  include ApplicationHelper
  include Devise::Controllers::Helpers
end

module UsersHelper
  include Kernel
  include ActionView::Helpers
  include ApplicationHelper
  include Devise::Controllers::Helpers
end

module DeviseHelper
  include Kernel
  include ActionView::Helpers
  include ApplicationHelper
  include Devise::Controllers::Helpers
end

module ActionController::Helpers
  sig { returns(T.all(ApplicationHelper, EnterpriseAccountsHelper, HomeHelper, OfferApplicationsHelper, OffersHelper, RoomsHelper, UsersHelper, DeviseHelper)) }
  def helpers; end
end
