json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :description, :address, :location, :gps_lat, :gps_lon, :category, :image_id
  json.url restaurant_url(restaurant, format: :json)
end
