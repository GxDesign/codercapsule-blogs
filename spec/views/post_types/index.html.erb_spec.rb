require 'rails_helper'

RSpec.describe "post_types/index", type: :view do
  before(:each) do
    assign(:post_types, [
      PostType.create!(
        :icon => "Icon",
        :name => "Name",
        :begin_html => "MyText",
        :end_html => "MyText"
      ),
      PostType.create!(
        :icon => "Icon",
        :name => "Name",
        :begin_html => "MyText",
        :end_html => "MyText"
      )
    ])
  end

  it "renders a list of post_types" do
    render
    assert_select "tr>td", :text => "Icon".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
