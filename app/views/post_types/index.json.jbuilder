json.array!(@post_types) do |post_type|
  json.extract! post_type, :id, :icon, :name, :begin_html, :end_html
  json.url post_type_url(post_type, format: :json)
end
