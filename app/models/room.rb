class Room < ApplicationRecord
    validates_uniqueness_of :name
    validates_uniqueness_of :subcategory_id

  scope :public_rooms, -> { where(is_private: false) }
  after_create_commit {broadcast_append_to "rooms"}
 
  has_many :messages


  
end
