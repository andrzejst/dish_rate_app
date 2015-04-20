class RestaurantRating < ActiveRecord::Base
  validates :rate_value, :presence => true
  validates :user_id, :presence => true
  validates :restaurant_id, :presence => true
  
  #relationships
  belongs_to :restaurant
  belongs_to :user
  has_many :restaurant_rating_comments, dependent: :destroy
  
end
