class PostComment < ActiveRecord::Base
  validates :content, :presence => true
  validates :user_id, :presence => true
  validates :post_id, :presence => true
  
  #relationships
  belongs_to :post
  belongs_to :user
end
