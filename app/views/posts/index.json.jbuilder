json.array!(@posts) do |post|
  json.extract! post, :id, :title, :content, :user_id, :image_id, :rating_id
  json.url post_url(post, format: :json)
end
