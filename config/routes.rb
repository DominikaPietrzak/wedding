Rails.application.routes.draw do
  devise_for :guests
  devise_for :superadmins
  devise_for :siperadmins
  devise_for :super_admins
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root to: "home#index"
end
