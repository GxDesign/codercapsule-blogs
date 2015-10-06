require 'rails_helper'

RSpec.describe "schools/show", type: :view do
  before(:each) do
    @school = assign(:school, School.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Street Address/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Route/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Blog Url/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/MyText/)
  end
end
