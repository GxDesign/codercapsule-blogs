require 'rails_helper'

RSpec.describe "students/index", type: :view do
  before(:each) do
    assign(:students, [
      Student.create!(
        :school => nil,
        :classroom => nil,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :email => "Email",
        :username => "Username",
        :blog_url => "Blog Url",
        :password => "Password",
        :blog_title => "Blog Title",
        :blog_description => "MyText"
      ),
      Student.create!(
        :school => nil,
        :classroom => nil,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :email => "Email",
        :username => "Username",
        :blog_url => "Blog Url",
        :password => "Password",
        :blog_title => "Blog Title",
        :blog_description => "MyText"
      )
    ])
  end

  it "renders a list of students" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Blog Url".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Blog Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
