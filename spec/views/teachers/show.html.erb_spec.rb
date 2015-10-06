require 'rails_helper'

RSpec.describe "teachers/show", type: :view do
  before(:each) do
    @teacher = assign(:teacher, Teacher.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Firstname/)
    expect(rendered).to match(/Lastname/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Blog Url/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/Blog Title/)
    expect(rendered).to match(/MyText/)
  end
end
