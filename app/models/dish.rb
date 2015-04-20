class Dish < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  validates :category, :presence => true
  validates :menu_id, :presence => true
  
  #relationships
  belongs_to :menu
  has_many :posts, dependent: :destroy
  has_many :dish_ratings, dependent: :destroy
  has_many :images, as: :imageable
  
end
