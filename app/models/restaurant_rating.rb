class RestaurantRating < ActiveRecord::Base
  validates :rate_value, :presense => true
  validates :user_id, :presense => true
  validates :restaurant_id, :presense => true
end
