class Image < ActiveRecord::Base
     validates :name, :presence => true
  
  #relationships
  belongs_to :imageable, polymorphic: true
  
  
end
