json.array!(@dishes) do |dish|
  json.extract! dish, :id, :name, :description, :category, :image_id, :menu_id
  json.url dish_url(dish, format: :json)
end
