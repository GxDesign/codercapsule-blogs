require 'rails_helper'

RSpec.describe "post_types/new", type: :view do
  before(:each) do
    assign(:post_type, PostType.new(
      :icon => "MyString",
      :name => "MyString",
      :begin_html => "MyText",
      :end_html => "MyText"
    ))
  end

  it "renders new post_type form" do
    render

    assert_select "form[action=?][method=?]", post_types_path, "post" do

      assert_select "input#post_type_icon[name=?]", "post_type[icon]"

      assert_select "input#post_type_name[name=?]", "post_type[name]"

      assert_select "textarea#post_type_begin_html[name=?]", "post_type[begin_html]"

      assert_select "textarea#post_type_end_html[name=?]", "post_type[end_html]"
    end
  end
end
