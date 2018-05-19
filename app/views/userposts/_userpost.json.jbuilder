json.extract! userpost, :id, :image, :content, :user_id, :created_at, :updated_at
json.url userpost_url(userpost, format: :json)
