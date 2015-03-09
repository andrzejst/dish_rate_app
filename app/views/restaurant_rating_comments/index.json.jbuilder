json.array!(@restaurant_rating_comments) do |restaurant_rating_comment|
  json.extract! restaurant_rating_comment, :id, :content, :user_id, :restaurant_rating_id
  json.url restaurant_rating_comment_url(restaurant_rating_comment, format: :json)
end
