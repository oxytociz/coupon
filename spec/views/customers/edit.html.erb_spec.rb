require 'spec_helper'

describe "customers/edit.html.erb" do
  before(:each) do
    @customer = assign(:customer, stub_model(Customer,
      :new_record? => false,
      :first_name => "MyString",
      :last_name => "MyString",
      :email => "MyString",
      :password => "MyString",
      :password_confirmation => "MyString"
    ))
  end

  it "renders the edit customer form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => customer_path(@customer), :method => "post" do
      assert_select "input#customer_first_name", :name => "customer[first_name]"
      assert_select "input#customer_last_name", :name => "customer[last_name]"
      assert_select "input#customer_email", :name => "customer[email]"
      assert_select "input#customer_password", :name => "customer[password]"
      assert_select "input#customer_password_confirmation", :name => "customer[password_confirmation]"
    end
  end
end
