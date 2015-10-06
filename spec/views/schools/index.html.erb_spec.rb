require 'rails_helper'

RSpec.describe "schools/index", type: :view do
  before(:each) do
    assign(:schools, [
      School.create!(
        :name => "Name",
        :street_address => "Street Address",
        :street_number => 1,
        :route => "Route",
        :city => "City",
        :state => "State",
        :zip => 2,
        :country => "Country",
        :email => "Email",
        :username => "Username",
        :blog_url => "Blog Url",
        :password => "Password",
        :description => "MyText"
      ),
      School.create!(
        :name => "Name",
        :street_address => "Street Address",
        :street_number => 1,
        :route => "Route",
        :city => "City",
        :state => "State",
        :zip => 2,
        :country => "Country",
        :email => "Email",
        :username => "Username",
        :blog_url => "Blog Url",
        :password => "Password",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of schools" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Street Address".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Route".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Blog Url".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
