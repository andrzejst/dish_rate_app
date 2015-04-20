class DishRatingComment < ActiveRecord::Base
  validates :content, :presence => true
  validates :user_id, :presence => true
  validates :dish_rating_id, :presence => true
  
  #relationships
  belongs_to :dish_rating
  belongs_to :user
end
