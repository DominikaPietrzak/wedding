require 'rails_helper'

RSpec.describe "event_adresses/index", type: :view do
  before(:each) do
    assign(:event_adresses, [
      EventAdress.create!(
        :home_number => "Home Number",
        :town => "Town",
        :code => "Code",
        :state => "State",
        :event => nil
      ),
      EventAdress.create!(
        :home_number => "Home Number",
        :town => "Town",
        :code => "Code",
        :state => "State",
        :event => nil
      )
    ])
  end

  it "renders a list of event_adresses" do
    render
    assert_select "tr>td", :text => "Home Number".to_s, :count => 2
    assert_select "tr>td", :text => "Town".to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
