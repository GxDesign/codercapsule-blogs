require 'rails_helper'

RSpec.describe "teachers/new", type: :view do
  before(:each) do
    assign(:teacher, Teacher.new(
      :school => nil,
      :firstname => "MyString",
      :lastname => "MyString",
      :title => "MyString",
      :email => "MyString",
      :username => "MyString",
      :blog_url => "MyString",
      :password => "MyString",
      :blog_title => "MyString",
      :blog_description => "MyText"
    ))
  end

  it "renders new teacher form" do
    render

    assert_select "form[action=?][method=?]", teachers_path, "post" do

      assert_select "input#teacher_school_id[name=?]", "teacher[school_id]"

      assert_select "input#teacher_firstname[name=?]", "teacher[firstname]"

      assert_select "input#teacher_lastname[name=?]", "teacher[lastname]"

      assert_select "input#teacher_title[name=?]", "teacher[title]"

      assert_select "input#teacher_email[name=?]", "teacher[email]"

      assert_select "input#teacher_username[name=?]", "teacher[username]"

      assert_select "input#teacher_blog_url[name=?]", "teacher[blog_url]"

      assert_select "input#teacher_password[name=?]", "teacher[password]"

      assert_select "input#teacher_blog_title[name=?]", "teacher[blog_title]"

      assert_select "textarea#teacher_blog_description[name=?]", "teacher[blog_description]"
    end
  end
end
