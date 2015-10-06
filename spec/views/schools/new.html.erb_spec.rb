require 'rails_helper'

RSpec.describe "schools/new", type: :view do
  before(:each) do
    assign(:school, School.new(
      :name => "MyString",
      :street_address => "MyString",
      :street_number => 1,
      :route => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => 1,
      :country => "MyString",
      :email => "MyString",
      :username => "MyString",
      :blog_url => "MyString",
      :password => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new school form" do
    render

    assert_select "form[action=?][method=?]", schools_path, "post" do

      assert_select "input#school_name[name=?]", "school[name]"

      assert_select "input#school_street_address[name=?]", "school[street_address]"

      assert_select "input#school_street_number[name=?]", "school[street_number]"

      assert_select "input#school_route[name=?]", "school[route]"

      assert_select "input#school_city[name=?]", "school[city]"

      assert_select "input#school_state[name=?]", "school[state]"

      assert_select "input#school_zip[name=?]", "school[zip]"

      assert_select "input#school_country[name=?]", "school[country]"

      assert_select "input#school_email[name=?]", "school[email]"

      assert_select "input#school_username[name=?]", "school[username]"

      assert_select "input#school_blog_url[name=?]", "school[blog_url]"

      assert_select "input#school_password[name=?]", "school[password]"

      assert_select "textarea#school_description[name=?]", "school[description]"
    end
  end
end
