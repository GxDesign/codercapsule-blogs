require 'rails_helper'

RSpec.describe "PostTypes", type: :request do
  describe "GET /post_types" do
    it "works! (now write some real specs)" do
      get post_types_path
      expect(response).to have_http_status(200)
    end
  end
end
