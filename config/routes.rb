Rails.application.routes.draw do
  devise_for :superadmins, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :admin_user
  devise_for :guests
  resources :expense_services
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to: "home#index"
end
