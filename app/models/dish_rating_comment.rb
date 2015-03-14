class DishRatingComment < ActiveRecord::Base
  validates :content, :presense => true
  validates :user_id, :presense => true
  validates :dish_rating_id, :presense => true
end
