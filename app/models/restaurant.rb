class Restaurant < ActiveRecord::Base
  validates :name, :presense => true
  validates :description, :presense => true
  validates :address, :presense => true
  validates :location, :presense => true
  validates :gps_lat, :presense => true
  validates :gps_lon, :presense => true
  validates :category, :presense => true
  validates :image_id, :presense => true
end
