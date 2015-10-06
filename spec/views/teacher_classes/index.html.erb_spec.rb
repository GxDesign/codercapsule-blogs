require 'rails_helper'

RSpec.describe "teacher_classes/index", type: :view do
  before(:each) do
    assign(:teacher_classes, [
      TeacherClass.create!(
        :teacher => nil,
        :classroom => nil
      ),
      TeacherClass.create!(
        :teacher => nil,
        :classroom => nil
      )
    ])
  end

  it "renders a list of teacher_classes" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
