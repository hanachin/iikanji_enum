json.extract! draft_post, :id, :type, :state, :title, :body, :created_at, :updated_at
json.url draft_post_url(draft_post, format: :json)
