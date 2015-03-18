class Dish < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  validates :category, :presence => true
  validates :image_id, :presence => true
  validates :menu_id, :presence => true 
end
