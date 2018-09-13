Rails.application.routes.draw do

  # lywed guest list
  get '/lywed_guest_lists' => 'lywed_guest_lists#index'

  # expense stuff
  get 'expense_stuff_cost_sum', to: 'expense_stuff_cost_sum#index'
  get 'expense_stuff_cost_min_sum', to: 'expense_stuff_cost_min_sum#index'
  get 'expens_stuff_cost_max_sum', to: 'expens_stuff_cost_max_sum#index'
  get 'expense_stuff_cost_mid_sum',  to: 'expens_stuff_cost_mid_sum#index'

  # expense service

  get 'expense_service_cost_sum', to: 'expense_services_cost_sum#index'
  get 'expense_service_cost_min_sum', to: 'expense_services_cost_sum_cost_min_sum#index'
  get 'expens_service_cost_max_sum', to: 'expens_services_cost_max_sum#index'
  get 'expense_service_cost_mid_sum',  to: 'expens_services_cost_mid_sum#index'

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

  #budget
  get "/update_budgets" => 'budgets#edit_budgets'
  post "/update_budgets" => 'budgets#update_budgets'

  #accompaning person
  get "/update_accompaning_people" => 'accompaning_people#edit_accompaning_people'
  post "/update_accompaning_people" => 'accompaning_people#update_accompaning_people'

  #event guest list
  get "event_guests_lists" => 'event_guests_lists#index'

  #event attendance guest confirmations
  get "/update_ea_guest_confirmation" => 'ea_guest_confirmations#edit_ea_guest_confirmation'
  post "/update_ea_guest_confirmation" => 'ea_guest_confirmations#update_ea_guest_confirmation'

end
