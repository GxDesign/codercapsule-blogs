json.array!(@schools) do |school|
  json.extract! school, :id, :name, :street_address, :street_number, :route, :city, :state, :zip, :country, :email, :username, :blog_url, :password, :description
  json.url school_url(school, format: :json)
end
