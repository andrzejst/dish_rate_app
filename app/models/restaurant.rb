class Restaurant < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  validates :address, :presence => true
  validates :location, :presence => true
  validates :gps_lat, :presence => true
  validates :gps_lon, :presence => true
  validates :category, :presence => true
  validates :image_id, :presence => true
end
