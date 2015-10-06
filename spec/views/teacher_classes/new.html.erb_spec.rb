require 'rails_helper'

RSpec.describe "teacher_classes/new", type: :view do
  before(:each) do
    assign(:teacher_class, TeacherClass.new(
      :teacher => nil,
      :classroom => nil
    ))
  end

  it "renders new teacher_class form" do
    render

    assert_select "form[action=?][method=?]", teacher_classes_path, "post" do

      assert_select "input#teacher_class_teacher_id[name=?]", "teacher_class[teacher_id]"

      assert_select "input#teacher_class_classroom_id[name=?]", "teacher_class[classroom_id]"
    end
  end
end
