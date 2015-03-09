json.array!(@dish_ratings) do |dish_rating|
  json.extract! dish_rating, :id, :rate_value, :user_id, :dish_id
  json.url dish_rating_url(dish_rating, format: :json)
end
