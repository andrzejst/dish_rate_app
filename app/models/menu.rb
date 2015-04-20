class Menu < ActiveRecord::Base
  validates :is_active, :presence => true
  validates :restaurant_id, :presence => true
  
  #relationships
  belongs_to :restaurant
  has_many :dishes, dependent: :destroy
  
end
