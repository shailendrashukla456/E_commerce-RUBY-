class Subcategory < ApplicationRecord
  belongs_to :category
  mount_uploader :picture, AvatarUploader
  


  has_many :orders
  has_many :add_cards
end
