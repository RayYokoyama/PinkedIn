# typed: false
class ApplicationController < ActionController::Base
  include Pundit
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(
        :sign_up, keys: [
          :name,
          :hiragana,
          enterprise_account_attributes: [
            :name,
            :hiragana
          ]
        ]
      )
    end
end
