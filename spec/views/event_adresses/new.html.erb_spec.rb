require 'rails_helper'

RSpec.describe "event_adresses/new", type: :view do
  before(:each) do
    assign(:event_adress, EventAdress.new(
      :home_number => "MyString",
      :town => "MyString",
      :code => "MyString",
      :state => "MyString",
      :event => nil
    ))
  end

  it "renders new event_adress form" do
    render

    assert_select "form[action=?][method=?]", event_adresses_path, "post" do

      assert_select "input[name=?]", "event_adress[home_number]"

      assert_select "input[name=?]", "event_adress[town]"

      assert_select "input[name=?]", "event_adress[code]"

      assert_select "input[name=?]", "event_adress[state]"

      assert_select "input[name=?]", "event_adress[event_id]"
    end
  end
end
