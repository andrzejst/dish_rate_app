class User < ActiveRecord::Base
  validates :first_name, :presense => true
  validates :last_name, :presense => true
  validates :email, :presense => true
  
  
end
