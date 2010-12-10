require 'spec_helper'

describe "customers/show.html.erb" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :first_name => "First Name",
      :last_name => "Last Name",
      :email => "Email",
      :password => "Password",
      :password_confirmation => "Password Confirmation"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/First Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Last Name/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Email/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Password/)
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    rendered.should match(/Password Confirmation/)
  end
end
