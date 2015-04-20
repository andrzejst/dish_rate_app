class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :content, :presence => true
  validates :user_id, :presence => true

  
  #relationships
  belongs_to :dish
  belongs_to :user
  has_many :post_comments, dependent: :destroy
  has_one :dish_rating, dependent: :destroy
   has_many :images, as: :imageable
  
  
end
