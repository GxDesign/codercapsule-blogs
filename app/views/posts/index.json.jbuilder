json.array!(@posts) do |post|
  json.extract! post, :id, :author_id, :title, :type_id, :content, :created_at, :published, :published_at
  json.url post_url(post, format: :json)
end
