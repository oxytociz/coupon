require 'spec_helper'

describe "customers/index.html.erb" do
  before(:each) do
    assign(:customers, [
      stub_model(Customer,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :password => "Password",
        :password_confirmation => "Password Confirmation"
      ),
      stub_model(Customer,
        :first_name => "First Name",
        :last_name => "Last Name",
        :email => "Email",
        :password => "Password",
        :password_confirmation => "Password Confirmation"
      )
    ])
  end

  it "renders a list of customers" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Password Confirmation".to_s, :count => 2
  end
end
