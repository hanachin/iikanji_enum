json.extract! published_post, :id, :type, :state, :title, :body, :created_at, :updated_at
json.url published_post_url(published_post, format: :json)
