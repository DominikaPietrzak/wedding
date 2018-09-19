Rails.application.routes.draw do


  get 'guest_list_events_summary/index'

  get "/event_time_count_down" => 'event_time_count_downs#index'

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
  resources :expenses
  resources :guest_adresses
  resources :posts

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
  get "guest_list_events_summary" => 'guest_list_events_summary#index'

  #event attendance guest confirmations
  get "/update_ea_guest_confirmation" => 'ea_guest_confirmations#edit_ea_guest_confirmation'
  post "/update_ea_guest_confirmation" => 'ea_guest_confirmations#update_ea_guest_confirmation'

  get "/admin_update_ea_guest_confirmation" => 'ea_guest_confirmations#admin_edit_ea_guest_confirmation'
  post "/admin_update_ea_guest_confirmation" => 'ea_guest_confirmations#admin_update_ea_guest_confirmation'

  # lywed guest list
  get '/guest_list_newlywed_summary' => 'guest_list_newlywed_summary#index'

  # budget
  get "budget_max_how_much_money_lefts" => 'budget_max_how_much_money_lefts#index'
  get "budget_min_how_much_money_lefts" => 'budget_min_how_much_money_lefts#index'

end
