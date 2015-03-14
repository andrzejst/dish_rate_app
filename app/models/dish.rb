class Dish < ActiveRecord::Base
  validates :name, :presense => true
  validates :description, :presense => true
  validates :category, :presense => true
  validates :image_id, :presense => true
  validates :menu_id, :presense => true 
end
