require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :author_id => 1,
      :title => "MyString",
      :type_id => 1,
      :content => "MyText",
      :published => false
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input#post_author_id[name=?]", "post[author_id]"

      assert_select "input#post_title[name=?]", "post[title]"

      assert_select "input#post_type_id[name=?]", "post[type_id]"

      assert_select "textarea#post_content[name=?]", "post[content]"

      assert_select "input#post_published[name=?]", "post[published]"
    end
  end
end
