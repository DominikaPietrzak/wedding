require 'rails_helper'

RSpec.describe "event_adresses/edit", type: :view do
  before(:each) do
    @event_adress = assign(:event_adress, EventAdress.create!(
      :home_number => "MyString",
      :town => "MyString",
      :code => "MyString",
      :state => "MyString",
      :event => nil
    ))
  end

  it "renders the edit event_adress form" do
    render

    assert_select "form[action=?][method=?]", event_adress_path(@event_adress), "post" do

      assert_select "input[name=?]", "event_adress[home_number]"

      assert_select "input[name=?]", "event_adress[town]"

      assert_select "input[name=?]", "event_adress[code]"

      assert_select "input[name=?]", "event_adress[state]"

      assert_select "input[name=?]", "event_adress[event_id]"
    end
  end
end
