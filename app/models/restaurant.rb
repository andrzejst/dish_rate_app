class Restaurant < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  validates :address, :presence => true
  validates :location, :presence => true
  validates :gps_lat, :presence => true
  validates :gps_lon, :presence => true
  validates :category, :presence => true
  
  

  
  #relationships
  #has_many :menus, dependent: :destroy
  has_many :dishes, dependent: :destroy
  has_many :restaurant_ratings, dependent: :destroy
  has_many :images, as: :imageable
  accepts_nested_attributes_for :images
  
  
end
