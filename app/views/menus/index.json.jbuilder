json.array!(@menus) do |menu|
  json.extract! menu, :id, :is_active, :restaurant_id
  json.url menu_url(menu, format: :json)
end
