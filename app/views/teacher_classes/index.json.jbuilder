json.array!(@teacher_classes) do |teacher_class|
  json.extract! teacher_class, :id, :teacher_id, :classroom_id
  json.url teacher_class_url(teacher_class, format: :json)
end
