json.extract! event_adress, :id, :home_number, :town, :code, :state, :event_id, :created_at, :updated_at
json.url event_adress_url(event_adress, format: :json)
