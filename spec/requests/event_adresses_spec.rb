require 'rails_helper'

RSpec.describe "EventAdresses", type: :request do
  describe "GET /event_adresses" do
    it "works! (now write some real specs)" do
      get event_adresses_path
      expect(response).to have_http_status(200)
    end
  end
end
