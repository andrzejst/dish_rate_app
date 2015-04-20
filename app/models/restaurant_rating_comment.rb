class RestaurantRatingComment < ActiveRecord::Base
  validates :content, :presence => true
  validates :user_id, :presence => true
  validates :restaurant_rating_id, :presence => true
  
  #relationships
  belongs_to :restaurant_rating
  belongs_to :user
end
