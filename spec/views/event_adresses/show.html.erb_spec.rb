require 'rails_helper'

RSpec.describe "event_adresses/show", type: :view do
  before(:each) do
    @event_adress = assign(:event_adress, EventAdress.create!(
      :home_number => "Home Number",
      :town => "Town",
      :code => "Code",
      :state => "State",
      :event => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Home Number/)
    expect(rendered).to match(/Town/)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(//)
  end
end
