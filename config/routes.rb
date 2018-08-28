Rails.application.routes.draw do
  devise_for :superadmins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :admin_user
  devise_for :guests, controllers: {
      registrations: 'guests/registrations',
    }
  resources :guest_lists
  resources :expense_services
  resources :expense_stuffs
  root to: "home#index"
  get 'expense/services', to: 'expense_services#index'
end
