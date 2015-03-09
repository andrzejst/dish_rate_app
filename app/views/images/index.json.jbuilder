json.array!(@images) do |image|
  json.extract! image, :id, :name, :description, :location_path
  json.url image_url(image, format: :json)
end
