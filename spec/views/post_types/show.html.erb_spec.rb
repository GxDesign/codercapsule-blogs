require 'rails_helper'

RSpec.describe "post_types/show", type: :view do
  before(:each) do
    @post_type = assign(:post_type, PostType.create!(
      :icon => "Icon",
      :name => "Name",
      :begin_html => "MyText",
      :end_html => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Icon/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end
