class Image < ActiveRecord::Base
  validates :name, :presence => true
  validates :location_path, :presence => true
  
  #relationships
  belongs_to :imageable, polymorphic: true  
  
end
