class RestaurantRating < ActiveRecord::Base
  validates :rate_value, :presence => true
  validates :user_id, :presence => true
  validates :restaurant_id, :presence => true
end
