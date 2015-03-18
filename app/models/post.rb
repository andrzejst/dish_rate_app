class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :content, :presence => true
  validates :user_id, :presence => true
  validates :image_id, :presence => true
  validates :rating_id, :presence => true  
end
