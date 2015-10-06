require 'rails_helper'

RSpec.describe "teacher_classes/edit", type: :view do
  before(:each) do
    @teacher_class = assign(:teacher_class, TeacherClass.create!(
      :teacher => nil,
      :classroom => nil
    ))
  end

  it "renders the edit teacher_class form" do
    render

    assert_select "form[action=?][method=?]", teacher_class_path(@teacher_class), "post" do

      assert_select "input#teacher_class_teacher_id[name=?]", "teacher_class[teacher_id]"

      assert_select "input#teacher_class_classroom_id[name=?]", "teacher_class[classroom_id]"
    end
  end
end
