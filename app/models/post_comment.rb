class PostComment < ActiveRecord::Base
  validates :content, :presense => true
  validates :user_id, :presense => true
  validates :post_id, :presense => true
end
