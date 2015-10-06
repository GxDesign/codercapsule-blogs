json.array!(@teachers) do |teacher|
  json.extract! teacher, :id, :school_id, :firstname, :lastname, :title, :email, :username, :blog_url, :password, :blog_title, :blog_description
  json.url teacher_url(teacher, format: :json)
end
