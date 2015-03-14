class DishRating < ActiveRecord::Base
  validates :rate_value, :presense => true
  validates :user_id, :presense => true
  validates :dish_id, :presense => true
end
