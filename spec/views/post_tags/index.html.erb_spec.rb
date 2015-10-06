require 'rails_helper'

RSpec.describe "post_tags/index", type: :view do
  before(:each) do
    assign(:post_tags, [
      PostTag.create!(
        :post => nil,
        :tag => nil
      ),
      PostTag.create!(
        :post => nil,
        :tag => nil
      )
    ])
  end

  it "renders a list of post_tags" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
