require 'rails_helper'

RSpec.describe "students/edit", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
      :school => nil,
      :classroom => nil,
      :firstname => "MyString",
      :lastname => "MyString",
      :email => "MyString",
      :username => "MyString",
      :blog_url => "MyString",
      :password => "MyString",
      :blog_title => "MyString",
      :blog_description => "MyText"
    ))
  end

  it "renders the edit student form" do
    render

    assert_select "form[action=?][method=?]", student_path(@student), "post" do

      assert_select "input#student_school_id[name=?]", "student[school_id]"

      assert_select "input#student_classroom_id[name=?]", "student[classroom_id]"

      assert_select "input#student_firstname[name=?]", "student[firstname]"

      assert_select "input#student_lastname[name=?]", "student[lastname]"

      assert_select "input#student_email[name=?]", "student[email]"

      assert_select "input#student_username[name=?]", "student[username]"

      assert_select "input#student_blog_url[name=?]", "student[blog_url]"

      assert_select "input#student_password[name=?]", "student[password]"

      assert_select "input#student_blog_title[name=?]", "student[blog_title]"

      assert_select "textarea#student_blog_description[name=?]", "student[blog_description]"
    end
  end
end
