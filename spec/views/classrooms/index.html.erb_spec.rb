require 'rails_helper'

RSpec.describe "classrooms/index", type: :view do
  before(:each) do
    assign(:classrooms, [
      Classroom.create!(
        :name => "Name",
        :description => "MyText"
      ),
      Classroom.create!(
        :name => "Name",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of classrooms" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
