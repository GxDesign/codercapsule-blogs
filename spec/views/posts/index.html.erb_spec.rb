require 'rails_helper'

RSpec.describe "posts/index", type: :view do
  before(:each) do
    assign(:posts, [
      Post.create!(
        :author_id => 1,
        :title => "Title",
        :type_id => 2,
        :content => "MyText",
        :published => false
      ),
      Post.create!(
        :author_id => 1,
        :title => "Title",
        :type_id => 2,
        :content => "MyText",
        :published => false
      )
    ])
  end

  it "renders a list of posts" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
