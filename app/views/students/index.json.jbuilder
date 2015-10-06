json.array!(@students) do |student|
  json.extract! student, :id, :school_id, :classroom_id, :firstname, :lastname, :email, :username, :blog_url, :password, :blog_title, :blog_description
  json.url student_url(student, format: :json)
end
