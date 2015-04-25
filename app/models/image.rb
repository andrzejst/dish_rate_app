class Image < ActiveRecord::Base
  #attr_accessible :image_id, :name, :img, :location_oath, :imageable_ie, :imageable_type
  
  validates :name, :presence => true
  validates :location_path, :presence => true
  
  #relationships
  belongs_to :imageable, polymorphic: true  
  
  mount_uploader :img, ImageUploader
  
end

