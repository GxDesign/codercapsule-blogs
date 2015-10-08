json.array!(@posts) do |post|
  json.extract! post, :id, :author_id, :title, :post_type, :content, :created_at, :published, :published_at
  json.url post_url(post, format: :json)
end
