class Menu < ActiveRecord::Base
  validates :is_active, :presense => true
  validates :restaurant_id, :presense => true
end
