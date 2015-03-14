class RestaurantRatingComment < ActiveRecord::Base
  validates :content, :presense => true
  validates :user_id, :presense => true
  validates :restaurant_rating_id, :presense => true
end
