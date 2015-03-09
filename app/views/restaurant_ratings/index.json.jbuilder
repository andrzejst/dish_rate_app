json.array!(@restaurant_ratings) do |restaurant_rating|
  json.extract! restaurant_rating, :id, :rate_value, :user_id, :restaurant_id
  json.url restaurant_rating_url(restaurant_rating, format: :json)
end
