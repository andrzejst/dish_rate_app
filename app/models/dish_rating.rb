class DishRating < ActiveRecord::Base
  validates :rate_value, :presence => true
  validates :user_id, :presence => true
  validates :dish_id, :presence => true
  
  #relationships
  belongs_to :dish
  belongs_to :user
  has_many :dish_rating_comments, dependent: :destroy
  belongs_to :post
end
