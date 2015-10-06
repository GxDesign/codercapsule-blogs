require 'rails_helper'

RSpec.describe "teacher_classes/show", type: :view do
  before(:each) do
    @teacher_class = assign(:teacher_class, TeacherClass.create!(
      :teacher => nil,
      :classroom => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
