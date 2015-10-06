require 'rails_helper'

RSpec.describe "students/show", type: :view do
  before(:each) do
    @student = assign(:student, Student.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Firstname/)
    expect(rendered).to match(/Lastname/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Blog Url/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/Blog Title/)
    expect(rendered).to match(/MyText/)
  end
end
