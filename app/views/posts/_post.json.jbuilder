json.extract! post, :id, :country, :content, :image_path, :created_at, :updated_at
json.url post_url(post, format: :json)
