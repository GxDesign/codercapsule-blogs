require 'rails_helper'

RSpec.describe "TeacherClasses", type: :request do
  describe "GET /teacher_classes" do
    it "works! (now write some real specs)" do
      get teacher_classes_path
      expect(response).to have_http_status(200)
    end
  end
end
