json.extract! post, :id, :type, :state, :title, :body, :created_at, :updated_at
json.url post_url(post, format: :json)
