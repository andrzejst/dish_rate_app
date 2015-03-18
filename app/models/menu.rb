class Menu < ActiveRecord::Base
  validates :is_active, :presence => true
  validates :restaurant_id, :presence => true
end
