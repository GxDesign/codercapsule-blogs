require 'rails_helper'

RSpec.describe "post_tags/edit", type: :view do
  before(:each) do
    @post_tag = assign(:post_tag, PostTag.create!(
      :post => nil,
      :tag => nil
    ))
  end

  it "renders the edit post_tag form" do
    render

    assert_select "form[action=?][method=?]", post_tag_path(@post_tag), "post" do

      assert_select "input#post_tag_post_id[name=?]", "post_tag[post_id]"

      assert_select "input#post_tag_tag_id[name=?]", "post_tag[tag_id]"
    end
  end
end
