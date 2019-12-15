Rails.application.routes.draw do
  get 'offers/index'
  root to: 'home#index'

  # devise
  devise_for :users,
    path: '',
    path_names: {
      sign_up: '',
      sign_in: 'login',
      sign_out: 'logout',
      registration: "signup",
    },
    controllers: {
      confirmations: 'users/confirmations',
      passwords:     'users/passwords',
      registrations: 'users/registrations',
      sessions:      'users/sessions',
    }
  devise_scope :user do
    get '/ea_signup' => 'users/registrations#new_enterprise_account'
  end

  resource :user, path: '/user/profile'
  resources :users, only: [:show]
end
