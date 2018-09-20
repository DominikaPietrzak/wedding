require "rails_helper"

RSpec.describe EventAdressesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/event_adresses").to route_to("event_adresses#index")
    end

    it "routes to #new" do
      expect(:get => "/event_adresses/new").to route_to("event_adresses#new")
    end

    it "routes to #show" do
      expect(:get => "/event_adresses/1").to route_to("event_adresses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/event_adresses/1/edit").to route_to("event_adresses#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/event_adresses").to route_to("event_adresses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/event_adresses/1").to route_to("event_adresses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/event_adresses/1").to route_to("event_adresses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/event_adresses/1").to route_to("event_adresses#destroy", :id => "1")
    end
  end
end
