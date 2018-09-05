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
  resources :events
  resources :event_attendances
  resources :budgets
  
  get 'expense/services', to: 'expense_services#index'
  get "/pages/:page" => "presentation_pages#show"
  root "presentation_pages#show", page: "welcome_page"

  # event attendance
  get "/update_event_attendance" => 'event_attendances#edit_event_attendance'
  post "/update_event_attendance" => 'event_attendances#update_event_attendance'

  # guest list
  get "/update_guest_list" => 'guest_lists#edit_guest_list'
  post "/update_guest_list" => 'guest_lists#update_guest_list'
end
