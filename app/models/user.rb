class User < ActiveRecord::Base
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :email, :presence => true  

  #relationships
  has_many :restaurant_ratings, dependent: :destroy
  has_many :restaurant_rating_comments, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :dish_ratings, dependent: :destroy
  has_many :dish_rating_comments, dependent: :destroy
  has_many :post_comments, dependent: :destroy
  
  
end
