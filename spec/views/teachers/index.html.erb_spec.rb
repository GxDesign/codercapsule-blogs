require 'rails_helper'

RSpec.describe "teachers/index", type: :view do
  before(:each) do
    assign(:teachers, [
      Teacher.create!(
        :school => nil,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :title => "Title",
        :email => "Email",
        :username => "Username",
        :blog_url => "Blog Url",
        :password => "Password",
        :blog_title => "Blog Title",
        :blog_description => "MyText"
      ),
      Teacher.create!(
        :school => nil,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :title => "Title",
        :email => "Email",
        :username => "Username",
        :blog_url => "Blog Url",
        :password => "Password",
        :blog_title => "Blog Title",
        :blog_description => "MyText"
      )
    ])
  end

  it "renders a list of teachers" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Blog Url".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Blog Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
