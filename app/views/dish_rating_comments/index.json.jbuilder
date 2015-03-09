json.array!(@dish_rating_comments) do |dish_rating_comment|
  json.extract! dish_rating_comment, :id, :content, :user_id, :dish_rating_id
  json.url dish_rating_comment_url(dish_rating_comment, format: :json)
end
