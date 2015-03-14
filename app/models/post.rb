class Post < ActiveRecord::Base
  validates :title, :presense => true
  validates :content, :presense => true
  validates :user_id, :presense => true
  validates :image_id, :presense => true
  validates :rating_id, :presense => true  
end
