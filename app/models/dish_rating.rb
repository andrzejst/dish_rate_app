class DishRating < ActiveRecord::Base
  validates :rate_value, :presence => true
  validates :user_id, :presence => true
  validates :dish_id, :presence => true
end
