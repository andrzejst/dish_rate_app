class RestaurantRatingComment < ActiveRecord::Base
  validates :content, :presence => true
  validates :user_id, :presence => true
  validates :restaurant_rating_id, :presence => true
end
